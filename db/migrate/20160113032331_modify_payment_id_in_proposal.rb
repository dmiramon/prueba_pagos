class ModifyPaymentIdInProposal < ActiveRecord::Migration
  def change
  	change_column :proposals, :payment_id, :string
  end
end
