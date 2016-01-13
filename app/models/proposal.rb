class Proposal < ActiveRecord::Base
	belongs_to :full_plan, class_name: "Plan", foreign_key: :plan 
	belongs_to :full_currency, class_name: "Currency", foreign_key: :currency


	def pay_with_stripe stripe_token, proposal
		setup_stripe
		currency = self.full_currency.code
		amount = (currency == 'COP' ? self.total_price : self.total_price * 100)
		begin
		  charge = Stripe::Charge.create(
		    :amount => amount.to_i, 
		    :currency => currency,
		    :source => stripe_token,
		    :description => "Pago de proposal: #{self.proposal_code}"
		  )
		  puts charge["id"]
		  self.is_paid = true
		  self.client_name = proposal.client_name
		  self.client_email = proposal.client_email
		  self.save
		rescue => e
		  self.is_paid = false
		 end
		self
	end

	def self.search query
		proposals = Proposal.where('client_email LIKE ? OR client_name LIKE ?', "%#{query}%", "%#{query}%").includes(:full_currency)
	end

	private

	def setup_stripe
		require "stripe"
		Stripe.api_key = "sk_test_6ATow9skSqZs6oIFAnDDCAmQ"
	end
end
