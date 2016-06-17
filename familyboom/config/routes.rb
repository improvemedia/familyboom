require 'jarvis/engine'

FamilyBoom::Application.routes.draw do
#  mount Jarvis::Engine => "/", :as => 'jarvis'
  get '/photos/*other' => "errors#show", code: 404
  get '/photos/'       => "errors#show", code: 404
end
