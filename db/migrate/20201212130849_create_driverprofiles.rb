class CreateDriverprofiles < ActiveRecord::Migration[6.0]
  def change
    create_table :driverprofiles do |t|
      t.string :taiwan_id
      t.string :license
      t.string :car
      t.integer :account

      t.timestamps
    end
  end
end
