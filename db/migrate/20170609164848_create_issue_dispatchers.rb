class CreateIssueDispatchers < ActiveRecord::Migration[5.1]
  def change
    create_table :issue_dispatchers do |t|
      t.integer :issue_id
      t.integer :dispatcher_id

      t.timestamps
    end
  end
end
