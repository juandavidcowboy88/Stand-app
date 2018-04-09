require 'test_helper'

class ArtistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @artist = artists(:one)
  end

  test "should get index" do
    get artists_url
    assert_response :success
  end

  test "should get new" do
    get new_artist_url
    assert_response :success
  end

  test "should create artist" do
    assert_difference('Artist.count') do
      post artists_url, params: { artist: { address_artist: @artist.address_artist, artistictime_artist: @artist.artistictime_artist, biopic_artist: @artist.biopic_artist, birthdate_artist: @artist.birthdate_artist, cellphone_artist: @artist.cellphone_artist, city_artist: @artist.city_artist, country_artist: @artist.country_artist, email_artist: @artist.email_artist, facebookfanpage_artist: @artist.facebookfanpage_artist, facebookuser_artist: @artist.facebookuser_artist, instagramuser_artist: @artist.instagramuser_artist, lastname_artist: @artist.lastname_artist, linkgeneralphoto_artist: @artist.linkgeneralphoto_artist, linkvideosphotos: @artist.linkvideosphotos, name_artist: @artist.name_artist, nickname_artist: @artist.nickname_artist, rutinasnumber_artist: @artist.rutinasnumber_artist, skills_artist: @artist.skills_artist, stagetime_artist: @artist.stagetime_artist, work_artist: @artist.work_artist } }
    end

    assert_redirected_to artist_url(Artist.last)
  end

  test "should show artist" do
    get artist_url(@artist)
    assert_response :success
  end

  test "should get edit" do
    get edit_artist_url(@artist)
    assert_response :success
  end

  test "should update artist" do
    patch artist_url(@artist), params: { artist: { address_artist: @artist.address_artist, artistictime_artist: @artist.artistictime_artist, biopic_artist: @artist.biopic_artist, birthdate_artist: @artist.birthdate_artist, cellphone_artist: @artist.cellphone_artist, city_artist: @artist.city_artist, country_artist: @artist.country_artist, email_artist: @artist.email_artist, facebookfanpage_artist: @artist.facebookfanpage_artist, facebookuser_artist: @artist.facebookuser_artist, instagramuser_artist: @artist.instagramuser_artist, lastname_artist: @artist.lastname_artist, linkgeneralphoto_artist: @artist.linkgeneralphoto_artist, linkvideosphotos: @artist.linkvideosphotos, name_artist: @artist.name_artist, nickname_artist: @artist.nickname_artist, rutinasnumber_artist: @artist.rutinasnumber_artist, skills_artist: @artist.skills_artist, stagetime_artist: @artist.stagetime_artist, work_artist: @artist.work_artist } }
    assert_redirected_to artist_url(@artist)
  end

  test "should destroy artist" do
    assert_difference('Artist.count', -1) do
      delete artist_url(@artist)
    end

    assert_redirected_to artists_url
  end
end
