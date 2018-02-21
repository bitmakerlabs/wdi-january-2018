class PagesController < ApplicationController
  def home
  end

  def bitmaker
  end

  def club_secrets
    if params[:code_word] == 'umbrella'
      render plain: "Welcome to the club"
    else
      render plain: "You're not a member of this club!"
    end
  end

  def club_about
    if params[:code_word] == 'umbrella'
      case params[:attr]
      when 'food'
        render plain: 'We are having apples for lunch'
      when 'event'
        render plain: 'We are playing baseball this afternoon'
      else
        render plain: "I do not know about #{params[:attr]}"
      end
    else
      render plain: "You're not a member of this club!"
    end
  end

end
