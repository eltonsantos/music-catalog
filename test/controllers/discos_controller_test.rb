require 'test_helper'

class DiscosControllerTest < ActionController::TestCase
  setup do
    @disco = discos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:discos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create disco" do
    assert_difference('Disco.count') do
      post :create, disco: { description: @disco.description, local: @disco.local, name: @disco.name, price: @disco.price, state: @disco.state, year: @disco.year }
    end

    assert_redirected_to disco_path(assigns(:disco))
  end

  test "should show disco" do
    get :show, id: @disco
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @disco
    assert_response :success
  end

  test "should update disco" do
    patch :update, id: @disco, disco: { description: @disco.description, local: @disco.local, name: @disco.name, price: @disco.price, state: @disco.state, year: @disco.year }
    assert_redirected_to disco_path(assigns(:disco))
  end

  test "should destroy disco" do
    assert_difference('Disco.count', -1) do
      delete :destroy, id: @disco
    end

    assert_redirected_to discos_path
  end
end
