Rails.application.routes.draw do
  post '/urls', to: 'urls#create'
  get '/urls/:short_url', to: 'urls#show'
  get '/urls/:short_url/stats', to: 'urls#stats'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
