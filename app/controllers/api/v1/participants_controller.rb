module Api::V1
  class ParticipantsController < ApplicationController

    def index
      render json: Participant.accepted
    end

  end
end
