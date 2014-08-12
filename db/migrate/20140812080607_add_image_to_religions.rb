class AddImageToReligions < ActiveRecord::Migration
  def change
    add_column :religions, :image, :string
  end
end
