class CreateUrls < ActiveRecord::Migration[5.1]
  def change
    create_table :urls do |t|
      t.string :long
      t.string :short
      t.numeric :stats

      t.timestamps
    end
  end
end
