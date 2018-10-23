module DefaultPageConcern
    extend ActiveSupport::Concern

    included do 
        # Before filter broken change to before action
        before_action :set_page_defaults
    end

    def set_page_defaults
        @page_title = "TeeTee | DevcampPortfolio"
        @seo_keywords = "TeeTee Portfolio"
    end
end