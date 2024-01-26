class CreateSells < ActiveRecord::Migration[7.1]
  def change
    create_table :sells do |t|
      t.references :user, null: false, foreign_key: true
      t.decimal :total

      t.timestamps
    end
  end
end
