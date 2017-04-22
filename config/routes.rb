Rails.application.routes.draw do

  resources :picture_uploaders
  root 'tools#home'
  get '/contacts/:id/detail', to: 'contacts#detail'
 
  get '/reset_pdfs', to: 'pdfs#reset_pdfs'
  get '/import_pdfs', to: 'pdfs#import_pdfs'
  get '/download_pdf/:id', to: 'pdfs#download_pdf'
  get '/new_distill_pdf', to: 'pdfs#new_distill_pdf'
  post '/distill_pdf', to: 'pdfs#distill_pdf'

  resources :companies, :contacts, :tools, :pdfs, :docs

  # get '/bookmarks', to: 'tools#bookmarks'
  # get '/test', to: 'tools#test'
  # get '/import_new_companies', to: 'tools#import_new_companies'
  # get '/trunc_reset', to: 'tools#trunc_reset'
end
