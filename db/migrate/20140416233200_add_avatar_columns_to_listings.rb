class AddAvatarColumnsToListings < ActiveRecord::Migration
  def self.up
    add_attachment :listings, :avatar
  end

  def self.down
    remove_attachment :listings, :avatar
  end
end
