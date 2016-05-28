Rails.application.routes.draw do
  root to: "home#index"
  mount Monologue::Engine, at: '/blog'
end
