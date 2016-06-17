class SearchController < Jarvis::SearchController
  before_filter :set_default_layout_type

  def set_default_layout_type
    @layout_type = 'modal'
    @back_url = params[:referer] ? params[:referer] : root_url
  end
end
