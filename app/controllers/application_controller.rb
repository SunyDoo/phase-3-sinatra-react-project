class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/movies" do
    movies = Movie.all
    movies.to_json
  end

  get "/reviews" do
    movies = Review.all
    movies.to_json
  end

  get "/users" do
    movies = User.all
    movies.to_json
  end

  get '/movies/:id' do
    movie = Movie.find(params[:id])

    movie.to_json(include: { reviews: { include: :user } })
  end

  get '/users/:id' do
    user = User.find(params[:id])

    user.to_json(include: { reviews: { include: :movie } })
  end

  get '/movies/:id/average_score' do
    movie = Movie.find(params[:id])
    movie.to_json(include: { reviews: { include: :user } })
  end

 

  # post '/movies' do
  #   movie = Movie.create(
  #   title: params[:title],
  #   genre: params[:genre],
  #   year: params[:year],
  #   image: params[:image]
  #   )
  #   message.to_json
  # end

  # patch '/reviews/:id' do
  #   review = Review.find(params[:id])
  #   review.update(body: params[:body])
  #   review.to_json
  # end

  # delete '/reviews/:id' do
  #   review = Review.find(params[:id])
  #   review.destroy
  #   review.to_json
  # end

end
