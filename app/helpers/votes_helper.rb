module VotesHelper
  def most_voted?
    Vote.where(user_id: current_user.id, article_id:
    params[:article_id]).exists?
  end
end
