class Api::V1::PatientsController < ApplicationController
  respond_to? :json

  def show
    render json: Patient.find(params[:id])
  end
end
