class ReviewsController < ApplicationController

  def new
    @hospital = Hospital.find_by(id: params[:hospital_id])
  end

  def create
    @review = Review.create(name: params[:name], comment: params[:comment], hospital_id: params[:hospital_id])
    redirect_to hospital_reviews_path(params[:hospital_id].to_i)
  end

  def review_list
  end

end
