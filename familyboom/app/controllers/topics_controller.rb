class TopicsController < Jarvis::TopicsController

  def show
    @most_discussed_topics = Topic.for_home.page(1).per(6)

    super
  end

end
