require 'spec_helper'

describe "Users" do

  describe "signup" do

    describe "failure" do

      it "should not make a new user" do
        lambda do
          visit sign_up_path
          [ 'Email', 'Password', 'Password confirmation' ].each do |field_title|
            fill_in field_title, :with => ''
          end
          click_button
          response.should render_template 'devise/registrations/new'
          response.should have_selector 'div#error_explanation'
        end.should_not change(User, :count)
      end

    end

    describe "success" do

      it "should make a new user" do
        lambda do
          visit sign_up_path
          fill_in 'Email',                 :with => 'user@example.com'
          fill_in 'Password',              :with => 'foobar'
          fill_in 'Password confirmation', :with => 'foobar'
          click_button
          response.should render_template 'items/index'
        end.should change(User, :count).by 1
      end

    end

  end


  describe "sign in/out" do

    describe "failure" do
      it "should not sign a user in" do
        visit sign_in_path
        fill_in :email,     :with => ''
        fill_in :password,  :with => ''
        click_button
        # Re-render the sign in page.
        response.should render_template 'devise/sessions/new'
      end
    end

    describe "success" do
      it "should sign a user in and out" do
        user = Factory(:user)

        visit sign_in_path
        fill_in 'Email',    :with => user.email
        fill_in 'Password', :with => user.password
        click_button 'Sign in'
        controller.should be_signed_in

        click_link 'Sign out'
        controller.should_not be_signed_in
      end
    end

  end

end
