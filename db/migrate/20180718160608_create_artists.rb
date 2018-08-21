class CreateArtists < ActiveRecord::Migration[5.0]
  def change
    create_table :artists do |t|
              t.string :name_artist
              t.string :lastname_artist
              t.string :email_artist
              t.string :city_artist
              t.string :country_artist
              t.string :cellphone_artist
              t.string :rol_artist
              t.date :birthdate_artist
              t.string :linkgeneralphoto_artist
              t.string :nickname_artist
              t.string :linkvideos
              t.string :linkphoto
              t.string :generalinfo_artist
              t.text   :biopic_artist
              t.string :facebookuser_artist
              t.string :facebookfanpage_artist
              t.string :instagramuser_artist
              t.string :skills_artist
              t.string :work_artist
              t.string :address_artist
              t.integer :rutinasnumber_artist
              t.integer :stagetime_artist
              t.integer :role
              t.date :artistictime_artist
              t.timestamps
      end
          create_table :events do |t|
             t.string :name_evet
             t.string :artistcreator
             t.string :participants_event
             t.string :regularartists_event
             t.string :guesstartists_event
             t.datetime :date_event
             t.time :duration_event
             t.bigint :payment_event
             t.datetime :dateopeninscription_event
             t.datetime :datecloseinscription_event
             t.string :linktographicpiece_event
             t.string :linkfaceboo_event
             t.string :linkinstagram_event
             t.string :generalconditions_event
             t.boolean :generalcondition1_event
             t.boolean :generalcondition2_event
             t.string :generalcondition3_event_boolean
             t.boolean :repeat_event
             t.string :place_event
             t.string :contact_place
             t.timestamps
       end
       create_table :artists_events, id: false do |t|
             t.belongs_to :artist, index: true
             t.belongs_to :event, index: true
        end

  end
end
