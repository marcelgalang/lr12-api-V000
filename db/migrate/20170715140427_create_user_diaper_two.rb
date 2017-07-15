class CreateUserDiaperTwo < ActiveRecord::Migration[5.0]
  def change
    create_table :user_diaper_twos do |t|
      t.references :user, foreign_key: true
      t.references :diaper_twos, foreign_key: true
    end
  end
end
