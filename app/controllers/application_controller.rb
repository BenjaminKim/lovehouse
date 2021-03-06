class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  after_action :report_page_views, if: 'Rails.env.production?'

  private
    def report_page_views
      key = "love_house_pv:#{Date.today}"
      REDIS_POOL.with do |conn|
        conn.hincrby(key, controller_name, 1)
      end
    end
end
