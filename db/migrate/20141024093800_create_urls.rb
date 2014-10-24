class CreateUrls <ActiveRecord::Migration
  def change
    create_table :urls do |u|
      u.string :url

      u.timestamps
    end
  end
end
