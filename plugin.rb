# name: discourse-endpoint
# about: Adds additional endpoints(controllers) if you want to
#        get more information about the users but you can extend this
#        plugin to retrieve and submit information for
#        the resources you need
# version: 0.1.0
# authors: Heriberto Perez - @heridev

# load the engine
load File.expand_path('../lib/discourse_endpoint.rb', __FILE__)
load File.expand_path('../lib/discourse_endpoint/engine.rb', __FILE__)

# And mount the engine
Discourse::Application.routes.append do
  mount ::DiscourseEndpoint::Engine, at: '/endpoint'
end
