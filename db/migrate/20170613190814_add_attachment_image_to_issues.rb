class AddAttachmentImageToIssues < ActiveRecord::Migration[5.1]
  def self.up
    change_table :issues do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :issues, :image
  end
end
