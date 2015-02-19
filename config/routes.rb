DiscourseEndpoint::Engine.routes.draw do
  resource :users, path: '/' do
    collection do
      get 'test'
    end
  end
end
