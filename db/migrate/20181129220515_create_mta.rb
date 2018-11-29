class CreateMta < ActiveRecord::Migration[5.2]
  def change
    create_table :mta do |t|
      t.string :time

      t.timestamps
    end
  end
end
