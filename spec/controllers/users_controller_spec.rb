require 'rails_helper'

describe UsersController do
  context 'user' do
    before do
      login_user
    end

    describe '#show' do
      it 'assigns @user' do
        get :show
        expect(response).to be_success
        expect(assigns(:user)).to be_a_kind_of User
        expect(assigns(:user)).to eq(subject.current_user)
      end
    end

    describe '#order_emails' do
      it 'disables emails' do
        subject.current_user.update_attributes!(receive_order_emails: true)
        put :order_emails, user: {receive_order_emails: false}
        expect(response).to be_redirect
        expect(assigns(:user).receive_order_emails).to be_falsey
      end

      it 'enables emails' do
        subject.current_user.update_attributes!(receive_order_emails: false)
        put :order_emails, user: {receive_order_emails: true}
        expect(response).to be_redirect
        expect(assigns(:user).receive_order_emails).to be_truthy
      end
    end
  end
end
