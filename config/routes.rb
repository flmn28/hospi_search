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
  get '/open_list' => 'reservations#open_list'
  get '/tokyo' => 'reservations#toukyouto'
  get '/saitama' => 'reservations#satitamakenn'
<<<<<<< HEAD
  get '/hospitals_list' => 'reservations#hospitals_list'
=======
  get '/finish' => 'reservations#finish'

>>>>>>> 35b28d9b989285653545c24a6e44538aa103ac6b

end
