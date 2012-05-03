class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :cambia_idioma
  helper_method :current_user_session, :current_user, :es_admin
  
    def establece_cookie
      cookies['idioma'] = { :value => params[:locale], :expires =>
  1.year.from_now } 
    redirect_to root_path
    if cookies['idioma'] == "es-MX"
    flash[:message] = "Has cambiado el idioma a Espanol"
    elsif cookies['idioma'] == "en"
      flash[:message] = "Has cambiado el idioma a ingles"
    end
  end

    private

    def cambia_idioma
        I18n.locale = cookies['idioma'] || I18n.default_locale
      end
  
    def current_user_session
      return @current_user_session if defined?(@current_user_session)
      @current_user_session = UserSession.find
    end

    def current_user
      return @current_user if defined?(@current_user)
      @current_user = current_user_session && current_user_session.user
    end
    
    def es_admin
  	
  		if !current_user
 	        flash[:notice] = "You must be logged in to access this page"
			redirect_to root_path
		else
			if !current_user.admin?
			        flash[:notice] = "No tienes permisos para ver la pag"
					redirect_to root_path
			end
		end
  		
  	end
    
    def require_user
      unless current_user
        store_location
        flash[:notice] = "You must be logged in to access this page"
        redirect_to new_user_session_url
        return false
      end
    end

    def require_no_user
      if current_user
        store_location
        flash[:notice] = "You must be logged out to access this page"
        redirect_to account_url
        return false
      end
    end

    def store_location
      session[:return_to] = request.url
    end

    def redirect_back_or_default(default)
      redirect_to(session[:return_to] || default)
      session[:return_to] = nil
    end
end