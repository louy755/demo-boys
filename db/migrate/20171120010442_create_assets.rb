class CreateAssets < ActiveRecord::Migration[5.0]
  def change
    create_table :assets do |t|
      t.string :file
      t.references :location, index: true, foreign_key: true

      t.timestamps
    end
  end
end
