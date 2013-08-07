require 'test_helper'

class DecksControllerTest < ActionController::TestCase
  setup do
    @deck = decks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:decks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create deck" do
    assert_difference('Deck.count') do
      post :create, deck: { attr1: @deck.attr1, attr2: @deck.attr2, attr3: @deck.attr3, attr4: @deck.attr4, attr5: @deck.attr5, attr6: @deck.attr6, attr7: @deck.attr7, attr8: @deck.attr8, attr9: @deck.attr9, name: @deck.name, num_attr: @deck.num_attr }
    end

    assert_redirected_to deck_path(assigns(:deck))
  end

  test "should show deck" do
    get :show, id: @deck
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @deck
    assert_response :success
  end

  test "should update deck" do
    put :update, id: @deck, deck: { attr1: @deck.attr1, attr2: @deck.attr2, attr3: @deck.attr3, attr4: @deck.attr4, attr5: @deck.attr5, attr6: @deck.attr6, attr7: @deck.attr7, attr8: @deck.attr8, attr9: @deck.attr9, name: @deck.name, num_attr: @deck.num_attr }
    assert_redirected_to deck_path(assigns(:deck))
  end

  test "should destroy deck" do
    assert_difference('Deck.count', -1) do
      delete :destroy, id: @deck
    end

    assert_redirected_to decks_path
  end
end
