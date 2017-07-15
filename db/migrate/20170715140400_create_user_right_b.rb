class CreateUserRightB < ActiveRecord::Migration[5.0]
  def change
    create_table :user_right_bs do |t|
      t.references :user, foreign_key: true
      t.references :right_b, foreign_key: true
    end
  end
end
