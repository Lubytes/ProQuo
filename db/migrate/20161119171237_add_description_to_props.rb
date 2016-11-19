class AddDescriptionToProps < ActiveRecord::Migration[5.0]
  def change
    add_column :props, :description, :string
  end
end
