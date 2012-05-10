class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.string :project_name
      t.date :start_date
      t.date :end_date
      t.text :data

      t.timestamps
    end
  end
end
