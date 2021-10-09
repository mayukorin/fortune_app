class CreateSigns < ActiveRecord::Migration[6.0]
  def change
    create_table :signs do |t|
      t.string :name
      t.integer :month
      t.string :picture_url

      t.timestamps
    end
  end
end
