class CreateMountains < ActiveRecord::Migration[8.0]
  def change
    create_table :mountains do |t|
      t.string :name

      t.timestamps
    end
  end
end
