class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user
  after_action :updated_at

  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    end
  end

  def current_session
    if session[:user_id]
      SweepJob.perform_async(session)
    end
  end

  def authorize
    if !current_user
      flash[:alert] = "Sign in to access that feature."
      redirect_to '/posts'
    end
  end

  def authorize_conversation(user, conversation)
    if current_user.id != conversation.user1_id && current_user.id != conversation.user2_id
      flash[:alert] = "You are not authorized to access that feature."
      redirect_to '/posts'
    end
  end

  def updated_at
    if session[:user_id]
      current_time = Time.new
      session[:updated_at] = current_time
    end
  end

  def self.sweep(session)
    # binding.pry
    if session[:updated_at] == nil
      binding.pry
      true
    elsif (session[:updated_at]) < 1.minute.ago
      session.destroy
      binding.pry
      true
    end
    false
  end
end
