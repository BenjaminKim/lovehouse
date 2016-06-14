Rails.application.routes.draw do
  %w(map two_room one_room home).each do |x|
    get "/#{x}" => "#{x}#index"
  end
  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
