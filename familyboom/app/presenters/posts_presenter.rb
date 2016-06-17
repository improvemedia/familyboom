class PostsPresenter < Jarvis::PostsPresenter

  def editor_choice_posts
    @editor_choice_posts ||= Post.editor_choices.limit(5)
  end

end
