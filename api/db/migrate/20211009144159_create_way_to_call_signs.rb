class CreateWayToCallSigns < ActiveRecord::Migration[6.0]
  def change
    create_table :way_to_call_signs do |t|
      t.string :name
      t.references :sign, foregin_key: true
      t.timestamps
    end
  end
end
