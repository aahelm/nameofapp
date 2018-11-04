class ApplicationController < ActionController::Base
  rescue_from CanCan::AccessDenied do |exception|
  redirect_to main_app.root_url, alert: exception.message
end

before_action :set_products
def set_products
    @products = Product.all
end

end
