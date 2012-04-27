Refinery::Core::Engine.routes.append do

  # Admin routes
  namespace :badges, :path => '' do
    namespace :admin, :path => 'refinery' do
      resources :badges, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
