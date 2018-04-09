class CreateArtists < ActiveRecord::Migration[5.0]
  def change
    create_table :artists do |t|
      t.string :name_artist
      t.string :lastname_artist
      t.string :email_artist
      t.string :city_artist
      t.string :country_artist
      t.string :cellphone_artist
      t.date :birthdate_artist
      t.string :linkgeneralphoto_artist
      t.string :nickname_artist
      t.string :linkvideosphotos
      t.text :biopic_artist
      t.string :facebookuser_artist
      t.string :facebookfanpage_artist
      t.string :instagramuser_artist
      t.string :skills_artist
      t.string :work_artist
      t.string :address_artist
      t.integer :rutinasnumber_artist
      t.integer :stagetime_artist
      t.date :artistictime_artist

      t.timestamps
    end
  end
end
