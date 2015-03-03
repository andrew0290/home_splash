class HomeController < ApplicationController
  def index
    @current_time = Time.now.to_formatted_s(:short)
    @greet_message = case Time.now.hour
    when 5..11 
      "Goooood Mernin"
    when 12..15 
      "Good Afternoon My Queen"
    when 16..19 
      "Buenas Tardes"
    when 20..23, 0..4 
      "Boa Noite"
    end

  end
end
