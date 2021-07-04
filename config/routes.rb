Rails.application.routes.draw do
  root 'test#index'

  get 'test(/:id)', to: 'test#test'
  get 'nawigacja(/:id)', to: 'test#nawigacja'
  get 'witaj(/:id)', to: 'test#witaj'
  get 'index(/:id)', to: 'test#index'
  #match ':controller'
  #Wiąże parametry get gdzie uzyskuje paramatery post gdzie uzyskuje 

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
