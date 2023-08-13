require 'rails_helper'

describe PaymentsController, type: :controller do

  context 'user make payment' do
    let!(:user_1) { create(:user) }

    let(:params) do
      {
        payment: {
          user_id: user_1.id, 
          amount: 100,
          currency: 'eur'
        }
      }
    end

    let(:matched_response_keys) do
      ["name",
        "place_of_birth_of_customer",
        "date_of_birth",
        "amount",
        "currency",
        "timestamp"
      ]
    end
    context 'a valid request' do
      before do 
        post :create, params: params
      end

      it 'should response 200' do
        expect(response.status).to eq(200)
      end

      it 'should match the response keys' do
        body = JSON.parse(response.body)
        expect(body.keys).to eq(matched_response_keys)
      end
    end
  end
end