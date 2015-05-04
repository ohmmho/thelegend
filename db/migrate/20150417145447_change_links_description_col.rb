class ChangeLinksDescriptionCol < ActiveRecord::Migration
  def up
    change_column :links, :description, :text
end
def down
    # This might cause trouble if you have strings longer
    # than 255 characters.
    change_column :links, :description, :string
end
end
