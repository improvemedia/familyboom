class PostsController < Jarvis::PostsController

  def show
    @most_interesting = Post.most_interesting.page(1).per(5)
    super
  end
end
