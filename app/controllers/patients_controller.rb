class PatientsController < ApplicationController
  def show
    @reservations = current_patient.reservations

    if current_patient.gender
      @gender = '男'
    else
      @gender = '女'
    end
  end
end
