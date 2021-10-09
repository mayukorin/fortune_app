class CreateFortunes < ActiveRecord::Migration[6.0]
  def change
    create_table :fortunes do |t|
      t.integer :rank
      t.date :day
      t.references :sign, foregin_key: true
      t.references :fortune_site, foregin_key: true
      t.timestamps
    end
  end
end
