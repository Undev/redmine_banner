class AddDisplayPartToBanners < ActiveRecord::Migration
  def self.up
    add_column :banners, :display_part, :string, :default => "all",
               :null => false unless column_exists? :banners, :display_part
  end

  def self.down
    remove_column :banners, :display_part
  end
end

