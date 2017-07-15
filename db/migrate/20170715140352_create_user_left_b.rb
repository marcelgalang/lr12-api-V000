class CreateUserLeftB < ActiveRecord::Migration[5.0]
  def change
    create_table :user_left_bs do |t|
      t.references :user, foreign_key: true
      t.references :left_b, foreign_key: true
    end
  end
end
