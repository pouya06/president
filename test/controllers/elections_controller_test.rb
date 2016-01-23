require 'test_helper'

class ElectionsControllerTest < ActionController::TestCase
  setup do
    @election = elections(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:elections)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create election" do
    assert_difference('Election.count') do
      post :create, election: { ben_carson: @election.ben_carson, bernie_sanders: @election.bernie_sanders, carly_fiorina: @election.carly_fiorina, chris_christie: @election.chris_christie, donald_trump: @election.donald_trump, first_name: @election.first_name, hillary_clinton: @election.hillary_clinton, jeb_bush: @election.jeb_bush, john_kasich: @election.john_kasich, last_name: @election.last_name, marco_rubio: @election.marco_rubio, martin_omalley: @election.martin_omalley, mike_huckabee: @election.mike_huckabee, rand_paul: @election.rand_paul, rick_santorum: @election.rick_santorum, ted_cruz: @election.ted_cruz }
    end

    assert_redirected_to election_path(assigns(:election))
  end

  test "should show election" do
    get :show, id: @election
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @election
    assert_response :success
  end

  test "should update election" do
    patch :update, id: @election, election: { ben_carson: @election.ben_carson, bernie_sanders: @election.bernie_sanders, carly_fiorina: @election.carly_fiorina, chris_christie: @election.chris_christie, donald_trump: @election.donald_trump, first_name: @election.first_name, hillary_clinton: @election.hillary_clinton, jeb_bush: @election.jeb_bush, john_kasich: @election.john_kasich, last_name: @election.last_name, marco_rubio: @election.marco_rubio, martin_omalley: @election.martin_omalley, mike_huckabee: @election.mike_huckabee, rand_paul: @election.rand_paul, rick_santorum: @election.rick_santorum, ted_cruz: @election.ted_cruz }
    assert_redirected_to election_path(assigns(:election))
  end

  test "should destroy election" do
    assert_difference('Election.count', -1) do
      delete :destroy, id: @election
    end

    assert_redirected_to elections_path
  end
end
