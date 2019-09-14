class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do 
    redirect to '/recipes'
  end 
  
  get '/recipes' do 
    @recipes = Recipes.all 
    erb :index 
  end 
  
  get '/recipes/new' do
    erb :new 
  end 
  
  get '/recipes/:id/edit' do 
    @recipes = Recipe.find

end
