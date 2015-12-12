class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :number
      t.integer :submitting_user_id
      t.integer :subject_user_id
      t.text :comment

      t.timestamps
    end
  end
end
