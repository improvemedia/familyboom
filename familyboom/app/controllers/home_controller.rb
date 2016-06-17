class HomeController < Jarvis::HomeController

  def index
    @topics = Topic.for_home.page(1).per(6)

    @posts_by_tags = Rails.cache.fetch(:home_posts_by_tags, expires_in: 1.hour, race_condition_ttl: 60.seconds) {generate_posts_by_tag}

    super
  end

  protected

    def home_presenter
      HomePresenter.new(reports: 5, editor_choices: 6)
    end

    def generate_posts_by_tag
      tags = Tag.where(slug: ['zdorove', 'pitanie', 'krasota', 'ukhod-za-rebenkom'])
      result = []
      tags.map do |tag|
        group = {}
        group[tag] = tag.posts.published.random.limit(6)
        group
      end
    end
end
