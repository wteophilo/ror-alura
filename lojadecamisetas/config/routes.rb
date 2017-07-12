Rails.application.routes.draw do
    post "produtos" =>"produtos#create"
    get "produtos" => "produtos#index"
    get "produtos/new" => "produtos#new"
    root "produtos#index"
end
