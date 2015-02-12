class CreateCases < ActiveRecord::Migration
  def change
    create_table :cases do |t|
      t.date :event_date
      t.string :event_type
      t.string :pti_urn
      t.integer :version
      t.string :case_markers

      t.timestamps null: false
    end
  end
end
