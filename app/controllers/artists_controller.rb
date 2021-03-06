class ArtistsController < ApplicationController
  before_action :authenticate_artist!, except: [ :show, :index ]
  before_action :set_artist, only: [:show, :edit, :update, :destroy]


  # GET /artists
  # GET /artists.json
  def index
    @artists = Artist.all
# redirect_to post_path(@comment.post) Same as the above
  end

  # GET /artists/1
  # GET /artists/1.json
  def show
      #  @artist = Artist.find(params[:id])
      # @artist = current_artist.artist.find(params[:id])
      @artist = Artist.find(params[:id])
      @events = @artist.events
    end

  # GET /artists/new
  def new
    @artist = Artist.new
  end

  # GET /artists/1/edit
  def edit
    @artist = Artist.find(params[:id])
  end

  # POST /artists
  # POST /artists.json
  def create
    @artist = Artist.new(artist_params)

    respond_to do |format|
      if @artist.save

        format.html { redirect_to @artist, notice: 'Artist was successfully created.' }
        format.json { render :show, status: :created, location: @artist }
            @users.each do |user|
            UserNotifierMailer.new_post_mail(user, @post).deliver_now
            end
      else
        format.html { render :new }
        format.json { render json: @artist.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    respond_to do |format|
      if @artist.update(artist_params)
        format.html { redirect_to @artist, notice: 'Artist was successfully updated.' }
        format.json { render :show, status: :ok, location: @artist }
      else
        format.html { render :edit }
        format.json { render json: @artist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artists/1
  # DELETE /artists/1.json
  def destroy
    @artist.destroy
    respond_to do |format|
      format.html { redirect_to artists_url, notice: 'Artist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

    def new_post_modal
          @artist= Artist.new
    end

    def show_events
        @artist = Artist.find(params[:id])
    end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artist
      @artist = Artist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def artist_params
      params.require(:artist).permit(:id,:name_artist, :rol_artist, :lastname_artist, :email_artist, :city_artist, :country_artist, :cellphone_artist, :birthdate_artist, :linkgeneralphoto_artist, :nickname_artist, :linkvideos , :linkphoto , :generalinfo_artist , :biopic_artist, :facebookuser_artist, :facebookfanpage_artist, :instagramuser_artist, :skills_artist, :work_artist, :address_artist, :rutinasnumber_artist,
       :avatar , :role,:stagetime_artist, :artistictime_artist, :event_ids => [])
    end
end
