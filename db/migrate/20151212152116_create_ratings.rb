class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :number
      t.reference :submitting_user
      t.reference :subject_user
      t.text :comment

      t.timestamps
    end
  end
end
