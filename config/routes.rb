Rails.application.routes.draw do
  root to: "home#index"
  get "/services", to: "home#services"
  get "/technologies", to: "home#technologies"
  get "/about", to: "home#about"
  get "/contact", to: "home#contact"
  post "/contact", to: "home#post_contact"
  get "/contact_success", to: "home#contact_success"
  mount Monologue::Engine, at: '/blog'
end
