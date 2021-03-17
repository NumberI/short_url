class AddDefaultToUrl < ActiveRecord::Migration[5.1]
  def change
    change_column :urls, :stats, :integer, default: 0
  end
end
