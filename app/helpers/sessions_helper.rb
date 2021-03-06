module SessionsHelper
	def log_in(user)
		session[:user_id] = user.id
	end

	def log_out
		session[:user_id] = nil
	end

	def current_user
		@current_user ||= Admin.find_by(id: session[:user_id])
	end

	def logged_in?
		!current_user.nil?
	end
end
