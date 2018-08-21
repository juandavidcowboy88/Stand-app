class GeneralController < ApplicationController
before_action :authenticate_user!, except: [ :show, :index ]
  def index
    @artists = Artist.all
    @events = Event.all
  end


  private
    # Use callbacks to share common setup or constraints between actions.
      def set_artist
        @artist = Artist.find(params[:id])
    end

      # Never trust parameters from the scary internet, only allow the white list through.
      def artist_params
        params.require(:artist).permit(:id,:name_artist, :rol_artist, :lastname_artist, :email_artist, :city_artist, :country_artist, :cellphone_artist, :birthdate_artist, :linkgeneralphoto_artist, :nickname_artist, :linkvideosphotos, :biopic_artist, :facebookuser_artist, :facebookfanpage_artist, :instagramuser_artist, :skills_artist, :work_artist, :address_artist, :rutinasnumber_artist, :stagetime_artist, :artistictime_artist)
      end
      def is_admin?
           unless current_user.admin?
             flash[:alert] = 'No tienes permisos para acceder a esta ruta'
             redirect_to root_path
     end
     end
end
