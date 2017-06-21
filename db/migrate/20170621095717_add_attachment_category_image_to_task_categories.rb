class AddAttachmentCategoryImageToTaskCategories < ActiveRecord::Migration[5.1]
  def self.up
    change_table :task_categories do |t|
      t.attachment :category_image
    end
  end

  def self.down
    remove_attachment :task_categories, :category_image
  end
end
