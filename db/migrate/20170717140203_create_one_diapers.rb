class CreateOneDiapers < ActiveRecord::Migration[5.0]
  def change
    create_table :one_diapers do |t|
      t.references :user
      t.integer :count

      t.timestamps
    end
  end
end
