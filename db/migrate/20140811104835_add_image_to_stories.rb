class AddImageToStories < ActiveRecord::Migration
  def change
    add_column :stories, :avatar, :string
  end
end
