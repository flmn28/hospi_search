class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def root
    if patient_signed_in?
      redirect_to search_hospitals_path
    elsif hospital_signed_in?
      redirect_to open_reserved_list_path
    else
      redirect_to new_patient_session_path
    end
  end
end
