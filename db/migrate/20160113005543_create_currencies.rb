class CreateCurrencies < ActiveRecord::Migration
  def change
    create_table :currencies do |t|
      t.string :code
      t.string :symbol
      t.string :description
      t.string :origin_country

      t.timestamps null: false
    end
  end
end
