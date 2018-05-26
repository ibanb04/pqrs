class CreatePqrs < ActiveRecord::Migration[5.2]
  def change
    create_table :pqrs do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :title
      t.string :subject
      t.text :description
      t.date :date
      t.datetime :response_date
      t.references :file, foreign_key: true

      t.timestamps
    end
  end
end
