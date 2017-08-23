class ReservationsController < ApplicationController

  def search_hospitals
  end

  def open_list
    # @location = Location.find_by(prefenture: params[:prefecture], city: params[:city])
    # @hospitals = Hospital.where(location_id: @location.id, department: params[:department])
    #
    # @reserve_date_time = Date.today.to_datetime + Rational(9, 24)
    # @reserved_time_candidates = []
    # for x in 1..7
    #   for i in 1..18
    #     @reserved_time_candidates << @reserve_date_time
    #     @reserve_date_time += Rational(1, 48)
    #   end
    #   @reserve_date_time += Rational(15, 24)
    # end
    #
    # @reserved_time_candidates.each_with_index do |reserved_time_candidate, index|
    #   @hospitals.each do |hospital|
    #     if Reservation.find_by(hospital_id: hospital.id, reserved_time: reserved_time_candidate).nil?
    #       @open_hospitals << hospital
    #     end
    #   end
    #   eval("open_hospital#{index} = #{@hospitals}")
    # end

  end

  def toukyouto
  end

  def saitamakenn
  end

end
