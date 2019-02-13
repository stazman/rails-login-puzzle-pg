Rails.application.routes.draw do
    
    get "/", to: "logins#new"

    get "/logins/:id", to: "commands#new"

    # Note: making the route target "commands#new" allowed the form on the login show page to routed correctly.

    resources :logins, only: [ :index, :new, :create, :show ]

    resources :commands, only: [ :index, :new, :create, :show ]

end
