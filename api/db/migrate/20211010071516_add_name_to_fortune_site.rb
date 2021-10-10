class AddNameToFortuneSite < ActiveRecord::Migration[6.0]
  def change
    add_column :fortune_sites, :name, :string
  end
end
