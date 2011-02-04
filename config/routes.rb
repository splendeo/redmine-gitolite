if defined? map
  map.resources :public_keys, :controller => 'gitolite_public_keys', :path_prefix => 'my'
  map.resources :gitolite, :controller => 'gitolite', :path_prefix => '/projects/:id'
else
  ActionController::Routing::Routes.draw do |map|
    map.resources :public_keys, :controller => 'gitolite_public_keys', :path_prefix => 'my'
    map.resources :gitolite, :controller => 'gitolite', :path_prefix => '/projects/:id'
  end
end
