Rails.application.routes.draw do

  devise_for :patients, controllers: {
    sessions:      'patients/sessions',
    passwords:     'patients/passwords',
    registrations: 'patients/registrations'
  }

  devise_for :hospitals, controllers: {
    sessions:      'hospitals/sessions',
    passwords:     'hospitals/passwords',
    registrations: 'hospitals/registrations'
  }

  get '/search_hospitals' => 'reservations#search_hospitals'
  get '/reserve' => 'reservations#reserve'
  get '/tokyo' => 'reservations#toukyouto'
  get '/saitama' => 'reservations#satitamakenn'
  get '/lists_hospitals' => 'reservations#lists_hospitals'


end
