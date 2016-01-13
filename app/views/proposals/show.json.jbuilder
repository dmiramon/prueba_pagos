json.extract! @proposal, :id, :user_id, :plan, :currency, :unit_price, :total_price, :proposal_code, :num_subscriptions, :num_months, :client_name, :client_email, :company_name, :company_details, :notes, :is_paid, :payment_id
if @proposal.expiration_date?
	json.expiration_date @proposal.expiration_date 
else
	json.expiration_date ''
end

json.currency_name @proposal.full_currency.code 
