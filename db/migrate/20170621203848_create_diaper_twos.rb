class CreateDiaperTwos < ActiveRecord::Migration[5.0]
  def change
    create_table :diaper_twos do |t|
      t.integer :count
      t.datetime :createDate

      t.timestamps
    end
  end
end
