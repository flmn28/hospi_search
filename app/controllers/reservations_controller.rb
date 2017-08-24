class ReservationsController < ApplicationController

  def search_hospitals
    # department取得の処理を書いたらopen_listアクションのdepartmentをparamsから取得するようにする
  end

  def open_list

    @location = Location.find_by(prefecture: params[:prefecture], city: params[:city])
    @department = Department.find_by(id: 1) #仮に
    @hospitals = @department.hospitals

    @local_hospitals = []
    @hospitals.each do |hospital|
      if hospital.location_id == @location.id
        @local_hospitals << hospital
      end
    end

    @reserve_date_time = Date.today.to_datetime + Rational(9, 24)
    @reserved_time_candidates = []
    for x in 1..7
      for i in 1..18
        @reserved_time_candidates << @reserve_date_time
        @reserve_date_time += Rational(1, 48)
      end
      @reserve_date_time += Rational(15, 24)
    end

    @open_hospitals_array = []
    @reserved_time_candidates.each do |reserved_time_candidate|
      @open_hospitals = []

      @local_hospitals.each do |local_hospital|
        if Reservation.find_by(hospital_id: local_hospital.id, reserved_time: reserved_time_candidate).nil?
          @open_hospitals << local_hospital
        end
      end

      @open_hospitals_array << @open_hospitals
    end

  end

  def tokyo
  end

  def saitama
  end

  def hospitals_list
    @hospitals = []
    @hospital_ids = params[:hospital_ids]
    @hospital_ids.each do |hospital_id|
      @hospital = Hospital.find_by(id: hospital_id)
      @hospitals << @hospital
    end
  end

  def finish
  end

  def open_reserved_list
  end

  def confirm
  end

end

