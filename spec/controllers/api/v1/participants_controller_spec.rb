require "rails_helper"

describe Api::V1::ParticipantsController, type: :controller do
  let!(:participant1) { create(:participant, status: 'accepted') }
  let!(:participant2) { create(:participant, status: 'pending') }
  let!(:participant3) { create(:participant, status: 'rejected') }

  describe "GET participants" do
    before do
      get :index
    end

    it "returns accepted participants in json" do
      expect(response).to have_http_status(:success)

      json_response = JSON.parse(response.body)
      expect(json_response.length).to eq(1)
      expect(json_response[0]["id"]).to eq(participant1.id)
    end
  end
end
