class CreateRightBs < ActiveRecord::Migration[5.0]
  def change
    create_table :right_bs do |t|
      t.references :user
      t.integer :startTime
      t.integer :endTime

      t.timestamps
    end
  end
end
