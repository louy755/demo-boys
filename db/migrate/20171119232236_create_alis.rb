class CreateAlis < ActiveRecord::Migration[5.0]
  def change
    create_table :alis do |t|
      t.string :monty
      t.string :moe
      t.string :aseel

      t.timestamps
    end
  end
end
