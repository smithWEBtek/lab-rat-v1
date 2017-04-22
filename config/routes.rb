Rails.application.routes.draw do

  root 'tools#home'
  resources :companies, :contacts, :tools, :pdfs

  get '/pdf/:id', to: 'tools#show_pdf'
  get '/import_pdfs', to: 'tools#import_pdfs'
  # get '/bookmarks', to: 'tools#bookmarks'
  # get '/test', to: 'tools#test'
  # get '/add_pdfs', to: 'pdfs#add_pdfs'
  # get '/import_new_companies', to: 'tools#import_new_companies'
  # get '/trunc_reset', to: 'tools#trunc_reset'
end
