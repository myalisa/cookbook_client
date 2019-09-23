class Client::RecipesController < ApplicationController
  def index

    response = HTTP.get("http://localhost:3000/api/recipes") #gives back http response object
    @recipes = response.parse
    render 'index.html.erb'
  end

  def show
    response = HTTP.get("http://localhost:3000/api/recipes/#{params[:id]}")
    @recipe = response.parse
    render 'show.html.erb'
  end

  def new
    render 'new.html.erb'
    
  end
end

