class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/movies" do
    movies = Movie.all
    movies.to_json(include: { reviews: { include: :user } })
  end

  get "/reviews" do
    movies = Review.all
    movies.to_json
  end

  get "/users" do
    movies = User.all
    movies.to_json(include: { reviews: { include: :movie } })
  end

  
  get '/users/:id' do
    user = User.find(params[:id])

    user.to_json(include: { reviews: { include: :movie } })
  end

 
  post '/movies' do
    movie = Movie.create(
    title: params[:title],
    genre: params[:genre],
    year: params[:year],
    image: params[:image]
    )
    message.to_json
  end

  post '/reviews' do
    review = Review.create(
    movie_id: params[:movie_id],
    score: params[:score],
    comment: params[:comment],
    user_id: params[:user_id]
    )
    message.to_json
  end

  patch '/reviews/:id' do
    review = Review.find(params[:id])
    review.update(score: params[:score])
    review.update(comment: params[:comment])
    review.to_json
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
