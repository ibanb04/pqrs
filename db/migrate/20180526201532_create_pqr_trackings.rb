class CreatePqrTrackings < ActiveRecord::Migration[5.2]
  def change
    create_table :pqr_trackings, id: false do |t|
      t.references :pqr, foreign_key: true
      t.references :user, foreign_key: true
      t.references :status, foreign_key: true
      t.references :department, foreign_key: true
      t.datetime :date
      t.string :review
      t.string :response

      t.timestamps
    end
  end
end
