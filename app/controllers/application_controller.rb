class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    include DeviseWhitelist
    include SetSource
    include CurrentUserConcern
    include DefaultPageConcern
    
    before_action :set_copyright

    def set_copyright
      @copyright = TeeteeViewTool::Renderer.copyright 'Wasin Panitan', 'All rights Reserved' 
    end
end


module TeeteeViewTool
  class Renderer
    def self.copyright name, msg
      "&copy: #{Time.now.year} | <b>#{name}</b> #{msg}".html_safe
    end
  end
end

