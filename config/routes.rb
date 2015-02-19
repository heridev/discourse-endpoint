DiscourseEndpoint::Engine.routes.draw do
  resource :users do
    collection do
      get 'current'
    end
  end
end
