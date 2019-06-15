module Api::V1
  class ParticipantsController < ApplicationController

    def index
      render json: Participant.accepted
    end

    def create
    end

    def update
    end

    private

    def participant_params
      params.require(:participant).permit(:f_name, :l_name, :phone, :email, :gender, :current_weight, :height, :zip)
    end

  end
end
