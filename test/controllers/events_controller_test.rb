require 'test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event = events(:one)
  end

  test "should get index" do
    get events_url
    assert_response :success
  end

  test "should get new" do
    get new_event_url
    assert_response :success
  end

  test "should create event" do
    assert_difference('Event.count') do
      post events_url, params: { event: { artistcreator: @event.artistcreator, contact_place: @event.contact_place, date_event: @event.date_event, datecloseinscription_event: @event.datecloseinscription_event, dateopeninscription_event: @event.dateopeninscription_event, duration_event: @event.duration_event, generalcondition1_event: @event.generalcondition1_event, generalcondition2_event: @event.generalcondition2_event, generalcondition3_event_boolean: @event.generalcondition3_event_boolean, generalconditions_event: @event.generalconditions_event, guesstartists_event: @event.guesstartists_event, linkfaceboo_event: @event.linkfaceboo_event, linkinstagram_event: @event.linkinstagram_event, linktographicpiece_event: @event.linktographicpiece_event, name_evet: @event.name_evet, payment_event: @event.payment_event, place_event: @event.place_event, regularartists_event: @event.regularartists_event, repeat_event: @event.repeat_event } }
    end

    assert_redirected_to event_url(Event.last)
  end

  test "should show event" do
    get event_url(@event)
    assert_response :success
  end

  test "should get edit" do
    get edit_event_url(@event)
    assert_response :success
  end

  test "should update event" do
    patch event_url(@event), params: { event: { artistcreator: @event.artistcreator, contact_place: @event.contact_place, date_event: @event.date_event, datecloseinscription_event: @event.datecloseinscription_event, dateopeninscription_event: @event.dateopeninscription_event, duration_event: @event.duration_event, generalcondition1_event: @event.generalcondition1_event, generalcondition2_event: @event.generalcondition2_event, generalcondition3_event_boolean: @event.generalcondition3_event_boolean, generalconditions_event: @event.generalconditions_event, guesstartists_event: @event.guesstartists_event, linkfaceboo_event: @event.linkfaceboo_event, linkinstagram_event: @event.linkinstagram_event, linktographicpiece_event: @event.linktographicpiece_event, name_evet: @event.name_evet, payment_event: @event.payment_event, place_event: @event.place_event, regularartists_event: @event.regularartists_event, repeat_event: @event.repeat_event } }
    assert_redirected_to event_url(@event)
  end

  test "should destroy event" do
    assert_difference('Event.count', -1) do
      delete event_url(@event)
    end

    assert_redirected_to events_url
  end
end
