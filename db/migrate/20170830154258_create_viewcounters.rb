class CreateViewcounters < ActiveRecord::Migration[5.1]
  def change
    create_table :viewcounters do |t|
      t.integer :visitorhome
      t.integer :visitorabout
      t.integer :visitorcontact

      t.timestamps
    end
  end
end
