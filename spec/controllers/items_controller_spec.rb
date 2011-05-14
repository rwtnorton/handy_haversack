require 'spec_helper'

describe ItemsController do
  render_views

  describe "not signed in" do

    describe "GET 'new'" do
      it "should deny access" do
        get :new
        response.should redirect_to user_session_path
      end
    end

    describe "GET 'index'" do
      it "should deny access" do
        get :index
        response.should redirect_to user_session_path
      end
    end

    describe "GET 'edit'" do
      it "should deny access" do
        get :edit
        response.should redirect_to user_session_path
      end
    end

    describe "GET 'show'" do
      it "should deny access" do
        get :show
        response.should redirect_to user_session_path
      end
    end

    describe "GET 'create'" do
      it "should deny access" do
        get :create
        response.should redirect_to user_session_path
      end
    end

    describe "GET 'update'" do
      it "should deny access" do
        get :update
        response.should redirect_to user_session_path
      end
    end

    describe "GET 'destroy'" do
      it "should deny access" do
        get :destroy
        response.should redirect_to user_session_path
      end
    end
  end


#  describe 'signed in' do
#
#    describe "GET 'new'" do
#      it "should be successful" do
#        get 'new'
#        response.should be_success
#      end
#    end
#
#    describe "GET 'index'" do
#      it "should be successful" do
#        get 'index'
#        response.should be_success
#      end
#
#      it "should list items" do
#        get 'index'
#        response.should have_selector('ul#items')
#      end
#    end
#
#    describe "GET 'edit'" do
#      it "should be successful" do
#        get 'edit'
#        response.should be_success
#      end
#    end
#
#    describe "GET 'show'" do
#      it "should be successful" do
#        get 'show'
#        response.should be_success
#      end
#    end
#
#    describe "GET 'create'" do
#      it "should be successful" do
#        get 'create'
#        response.should be_success
#      end
#    end
#
#    describe "GET 'update'" do
#      it "should be successful" do
#        get 'update'
#        response.should be_success
#      end
#    end
#
#    describe "GET 'destroy'" do
#      it "should be successful" do
#        get 'destroy'
#        response.should be_success
#      end
#    end
#
#  end

end
