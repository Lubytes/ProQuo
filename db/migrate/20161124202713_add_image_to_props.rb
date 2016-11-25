class AddImageToProps < ActiveRecord::Migration[5.0]
  def self.up
    change_table :props do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :props, :image
  end
end
