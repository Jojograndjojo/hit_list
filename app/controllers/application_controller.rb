class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hunting_bag
    @id = current_user.id
  end
end
