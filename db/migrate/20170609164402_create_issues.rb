class CreateIssues < ActiveRecord::Migration[5.1]
  def change
    create_table :issues do |t|
      t.string :category
      t.string :neighborhood
      t.decimal :lat
      t.decimal :lng
      t.text :description
      t.string :status

      t.timestamps
    end
  end
end
