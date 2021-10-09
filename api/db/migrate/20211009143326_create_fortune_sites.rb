class CreateFortuneSites < ActiveRecord::Migration[6.0]
  def change
    create_table :fortune_sites do |t|
      t.string :web_url

      t.timestamps
    end
  end
end
