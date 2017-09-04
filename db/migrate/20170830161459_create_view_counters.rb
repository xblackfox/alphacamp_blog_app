class CreateViewCounters < ActiveRecord::Migration[5.1]
  def change
    create_table :view_counters do |t|
      t.string :page_name
      t.integer :count
      t.timestamps
      
    end
  end
end
