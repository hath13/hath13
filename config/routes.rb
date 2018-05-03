Rails.application.routes.draw do
  resources :motors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "motors#index"
  class RequestConstraint
    def self.matches?(request)
      /(\.well-known)/i.match(request.original_url).present?
    end
  end

  match "*path", to: "home#index", via: :all, constraints: RequestConstraint
end
