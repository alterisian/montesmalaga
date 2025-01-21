class CreateSummits < ActiveRecord::Migration[8.0]
  def change
    create_table :summits do |t|
      t.string :insta
      t.integer :mountain_id

      t.timestamps
    end
  end
end
