require 'rails_helper'

feature 'Monographic Order Requests' do
  context 'selector' do
    before do
      selector = FactoryBot.create(:selector)
      login_user(selector.user)
    end

    scenario 'creates a new order request' do
      order = FactoryBot.build(:monographic_order)
      visit new_monographic_order_path

      select order.cataloging_location, from: 'Cataloging location'
      fund = @current_user.selector.selector_funds.first
      select fund.name, from: 'Fund'

      fill_in 'Title', with: order.title
      fill_in 'Publisher', with: order.publisher
      fill_in 'Author', with: order.author
      fill_in 'Publication year', with: order.publication_year.to_s
      button = all('input[name=commit]').first
      button.click

      expect(page).to have_text("Your order has been submitted")
      expect(current_path).to match %r{#{monographic_orders_path}/[0-9]+}
    end
  end
end
