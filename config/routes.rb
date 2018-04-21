Rails.application.routes.draw do

  namespace :api do

    resources :draft_years do
      resources :drafts
    end

    resources :drafts do
      resources :rounds do
        resources :picks
      end
    end

    # resources :rounds do
    #   resources :picks
    # end

  end

end
