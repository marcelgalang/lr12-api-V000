class CreateLeftBs < ActiveRecord::Migration[5.0]
  def change
    create_table :left_bs do |t|
      t.references  :user
      t.integer :startTime
      t.integer :endTime

      t.timestamps
    end
  end
end
