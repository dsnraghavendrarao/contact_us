class ApplicationController < ActionController::Base
  before_action :set_locale
  rescue_from ActionController::RoutingError, :with => :render_404
  rescue_from ActionController::RoutingError, with: :route_not_found
  
  private
  def render_404(exception = nil)
    if exception
      logger.info "Rendering 404: #{exception.message}"
    end
    render :file => "#{Rails.root}/public/404.html", :status => 404, :layout => false
  end
  def set_locale
    # I18n.locale = params[:locale] || I18n.default_locale
    locale = params[:locale].to_s.strip.to_sym
    I18n.locale = I18n.available_locales.include?(locale) ? locale :
      I18n.default_locale
  end
  def default_url_options(options = {})
    {locale: I18n.locale}
  end
  
end
