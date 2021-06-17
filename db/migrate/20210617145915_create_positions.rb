class CreatePositions < ActiveRecord::Migration[6.1]
  def change
    create_table :positions do |t|
      t.string :name, null: false
      t.string :status
      t.references :author, null: false, index: true


      t.timestamps
    end
  end
end
