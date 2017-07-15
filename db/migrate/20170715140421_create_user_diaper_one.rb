class CreateUserDiaperOne < ActiveRecord::Migration[5.0]
  def change
    create_table :user_diaper_ones do |t|
      t.references :user, foreign_key: true
      t.references :diaper_one, foreign_key: true
    end
  end
end
