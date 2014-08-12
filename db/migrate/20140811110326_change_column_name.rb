class ChangeColumnName < ActiveRecord::Migration
  def change
  	rename_column :stories, :avatar, :image
  end
end
