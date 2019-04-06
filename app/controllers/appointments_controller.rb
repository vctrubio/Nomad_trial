class AppointmentsController < ApplicationController
  before_action :find_appointment, only:[:show, :destroy, :update]
  
  def index
    @appointment = Appointment.all
  end

  def show
    @appointment
  end

  def new
    @appointment = Appointment.new
  end


  #all info should be passedin the new
  def create
    @appointment = Appointment.new(appointment_params)
    @appointment.user_id = current_user
  end

  def update
    @appointment
  end

  def destroy
    @appointment.destroy
    redirect_to current_user
      # NEED TO REDIRECT
  end

  private

  def appointment_params
    params.require(:appointment).permit(:location, :user_id, :start, :teacher_id, :payment)
  end

  #equipment and teacher confirmation to come after the lesson

  #to make a new appointment must have- teacher, user, location, start(time)

  def find_appointment
    @appointment = Appointment.find(params[:id])
  end


end
