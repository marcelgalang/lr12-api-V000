class CreateRightBs < ActiveRecord::Migration[5.0]
  def change
    create_table :right_bs do |t|
      t.integer :duration
      t.datetime :starttime
      t.datetime :endtime

      t.timestamps
    end
  end
end
