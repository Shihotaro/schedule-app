Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # aaa

  get "/schedules",to:"schedules#index"
  post "/schedules",to:"schedules#create"
  get "/schedules/new",to:"schedules#new",as:"new_schedule"
  get "/schedules/:id/edit",to:"schedules#edit", as:"edit_schedule"
  get "/schedules/:id",to:"schedules#show",as:"schedule"
  patch "/schedules/:id",to:"schedules#update"
  delete "/schedules/:id",to:"schedules#destroy"
end
