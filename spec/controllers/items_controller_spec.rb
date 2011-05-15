require 'spec_helper'

describe ItemsController do
  render_views

  describe "not signed in" do

    describe "GET 'new'" do
      it "should deny access" do
        get :new
        response.should redirect_to users_sign_in_path
      end
    end

    describe "GET 'index'" do
      it "should deny access" do
        get :index
        response.should redirect_to users_sign_in_path
      end
    end

    describe "GET 'edit'" do
      it "should deny access" do
        get :edit, :id => 1
        response.should redirect_to users_sign_in_path
      end
    end

    describe "GET 'show'" do
      it "should deny access" do
        get :show, :id => 1
        response.should redirect_to users_sign_in_path
      end
    end

    describe "POST 'create'" do
      it "should deny access" do
        post :create
        response.should redirect_to users_sign_in_path
      end
    end

    describe "PUT 'update'" do
      it "should deny access" do
        put :update, :id => 1
        response.should redirect_to users_sign_in_path
      end
    end

    describe "DELETE 'destroy'" do
      it "should deny access" do
        delete :destroy, :id => 1
        response.should redirect_to users_sign_in_path
      end
    end
  end


  describe 'signed in' do
    before(:each) do
      @user = Factory(:user)
      sign_in @user
    end

    describe "GET 'new'" do
      it "should be successful" do
        get :new
        response.should be_success
      end
    end

    describe "GET 'index'" do
      it "should be successful" do
        get :index
        response.should be_success
      end

      it "should list items" do
        get :index
        response.should have_selector('ul#items')
        @user.items.each do |item|
          response.should have_selector(
            'ul#items li',
            :content => item.name
          )
        end
      end
    end

    describe "GET 'edit'" do
      it "should be successful" do
        get :edit, :id => @user
        response.should be_success
      end
    end

    describe "GET 'show'" do
      it "should be successful" do
        get :show, :id => @user
        response.should be_success
      end
    end

    describe "POST 'create'" do
      it "should be successful" do
        pending 'not ready just yet'
        post :create
        response.should be_success
      end
    end

    describe "PUT 'update'" do
      it "should be successful" do
        pending 'not ready just yet'
        put :update, :id => @user
        response.should be_success
      end
    end

    describe "DELETE 'destroy'" do
      it "should be successful" do
        pending 'not ready just yet'
        delete :destroy, :id => @user
        response.should be_success
      end
    end

  end

end
