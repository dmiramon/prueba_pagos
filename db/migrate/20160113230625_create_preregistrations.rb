class CreatePreregistrations < ActiveRecord::Migration
  def change
    create_table :preregistrations do |t|
      t.integer :proposal_id
      t.string :student_name
      t.string :student_email

      t.timestamps null: false
    end
  end
end
