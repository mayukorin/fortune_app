class AddIndexToFortunes < ActiveRecord::Migration[6.0]
  def change
    add_index :fortunes, [:fortune_site_id, :sign_id, :day], unique: true
  end
end
