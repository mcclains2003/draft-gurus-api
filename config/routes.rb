Rails.application.routes.draw do

  namespace :api do

    resources :draft_years do
      resources :drafts
    end

    resources :drafts do
      resources :picks
    end

    resources :teams do
      resources :picks
    end

    resources :players

    resources :drafts

  end

end
