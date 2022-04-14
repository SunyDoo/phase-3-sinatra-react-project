class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/movies" do
    movies = Movie.all
    movies.to_json(include: { reviews: { include: :user } })
  end

  get "/reviews" do
    reviews = Review.all
    reviews.to_json
  end

  get "/users" do
    users = User.all
    users.to_json(include: { reviews: { include: :movie } })
  end
 
  post '/movies' do
    movie = Movie.create(
    title: params[:title],
    genre: params[:genre],
    year: params[:year],
    image: params[:image]
    )
    movie.to_json
  end

  post '/reviews' do
    review = Review.create(
    movie_id: params[:movie_id],
    score: params[:score],
    comment: params[:comment],
    user_id: params[:user_id]
    )
    review.to_json(include: :movie)
  end

  patch '/reviews/:id' do
    review = Review.find(params[:id])
    review.update(score: params[:score], comment: params[:comment])
    review.to_json(include: :movie)
  end

  delete '/movies/:id' do
    movie = Movie.find(params[:id])
    movie.destroy
    movie.to_json
  end

  delete '/reviews/:id' do
    review = Review.find(params[:id])
    review.destroy
    review.to_json
  end

end
