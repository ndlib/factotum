require 'rails_helper'

describe UsersController do
  context 'user' do
    before do
      login_user
    end

    describe '#show' do
      it 'assigns @user' do
        get :show
        response.should be_success
        assigns(:user).should be_a_kind_of User
        assigns(:user).should be == subject.current_user
      end
    end

    describe '#order_emails' do
      it 'disables emails' do
        subject.current_user.update_attributes!(receive_order_emails: true)
        put :order_emails, user: {receive_order_emails: false}
        response.should be_redirect
        assigns(:user).receive_order_emails.should be_false
      end

      it 'enables emails' do
        subject.current_user.update_attributes!(receive_order_emails: false)
        put :order_emails, user: {receive_order_emails: true}
        response.should be_redirect
        assigns(:user).receive_order_emails.should be_true
      end
    end
  end
end
