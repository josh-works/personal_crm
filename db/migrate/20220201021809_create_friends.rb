class CreateFriends < ActiveRecord::Migration[6.1]
  def change
    create_table :friends do |t|
      t.string :name
      t.string :description
      t.string :address
      t.string :home_lat
      t.string :home_long
      t.string :where_we_met
      t.string :strava_route_where_we_met

      t.timestamps
    end
  end
end
