class Portal::PatronProfileController < ApplicationController
  before_filter :authenticate_user!

  def profile
    @patron = Aleph::Borrower.new(current_user.username)
  end
end
