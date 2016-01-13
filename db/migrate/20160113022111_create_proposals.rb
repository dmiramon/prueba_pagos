class CreateProposals < ActiveRecord::Migration
  def change
    create_table :proposals do |t|
      t.integer :user_id
      t.integer :plan
      t.integer :currency
      t.decimal :unit_price
      t.decimal :total_price
      t.string :proposal_code
      t.integer :num_subscriptions
      t.integer :num_months
      t.string :client_name
      t.string :client_email
      t.string :company_name
      t.text :company_details
      t.date :expiration_date
      t.text :notes
      t.boolean :is_paid
      t.integer :payment_id

      t.timestamps null: false
    end
    add_index :proposals, :proposal_code
  end
end
