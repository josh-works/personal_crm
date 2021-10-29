class CreateBragEntries < ActiveRecord::Migration[6.1]
  def change
    create_table :brag_entries do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
