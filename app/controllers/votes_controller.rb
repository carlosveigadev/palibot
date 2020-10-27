class VotesController < ApplicationController
  before_action :find_article
  before_action :authenticate_user!

  def create
    if already_liked?
      redirect_to article_path(@article), flash: { error: "You can't vote more than once" }
    else
      @article.votes.create(user_id: current_user.id)
      redirect_to article_path(@article), flash: { notice: 'Nice! your vote was registered!' }
    end
  end

  private

  def find_article
    @article = Article.find(params[:article_id])
  end

  def already_liked?
    Vote.where(user_id: current_user.id, article_id:
    params[:article_id]).exists?
  end
end
