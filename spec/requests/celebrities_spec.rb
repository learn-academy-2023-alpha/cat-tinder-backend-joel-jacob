require 'rails_helper'

RSpec.describe "Celebrities", type: :request do
  describe "GET /index" do
    it "gets a list of celebrities" do
      Celebrity.create(
        name: 'Simone Ashley',
        age: "27",
        stared_in: 'Bridgerton',
        image:'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.today.com%2Fpopculture%2Ftv%2Fbridgerton-season-2-simone-ashley-interview-rcna21469&psig=AOvVaw1LFPGsx-uBr-L7yzMx9Ix2&ust=1680644770460000&source=images&cd=vfe&ved=0CA8QjRxqFwoTCPjjg-bXjv4CFQAAAAAdAAAAABAE'
      )
      get '/celebrities'
      celebrity = JSON.parse(response.body)

      expect(response).to have_http_status(200)
      expect(celebrity.length).to eq 1
    end
 end


  describe "POST / create" do
    it "creates a celebrity" do
      celebrity_params = {
       celebrity: {  
        name: 'Luke Newton',
        age: "30",
        stared_in: 'Bridgerton',
        image:'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.independent.co.uk%2Farts-entertainment%2Ftv%2Ffeatures%2Fluke-newton-interview-bridgerton-season-2-b2037973.html&psig=AOvVaw0S-DtIW1tehqjB1_dA8KFm&ust=1680645077806000&source=images&cd=vfe&ved=0CA8QjRxqFwoTCNiX0PjYjv4CFQAAAAAdAAAAABAE'
       
}
      }

      post '/celebrities', params: celebrity_params
      celebrity = Celebrity.first


      updated_celebrity_params = {
        celebrity: {
          name: 'Regé-Jean Page',
          age: "35",
          stared_in: 'Bridgerton',
          image:'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.glamour.com%2Fstory%2Frege-jean-page-leaving-bridgerton-ok&psig=AOvVaw2ElpGua5ilaQQzR7787uAX&ust=1680644900143000&source=images&cd=vfe&ved=0CA8QjRxqFwoTCJig56PYjv4CFQAAAAAdAAAAABAE'
        }
      }
patch "/celebrities/#{celebrity.id}", params:
  updated_celebrity_params
    updated_celebrity = Celebrity.find(celebrity.id)
       expect(response).to have_http_status(200)
     expect(updated_celebrity.age).to eq "35"
    end 
  end

    describe "DELETE /destroy" do 
      it 'deletes a celebrity' do
        celebrity_params = {
         celebrity: {  
          name: 'Regé-Jean Page',
          age: "34",
          stared_in: 'Bridgerton',
          image:'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.glamour.com%2Fstory%2Frege-jean-page-leaving-bridgerton-ok&psig=AOvVaw2ElpGua5ilaQQzR7787uAX&ust=1680644900143000&source=images&cd=vfe&ved=0CA8QjRxqFwoTCJig56PYjv4CFQAAAAAdAAAAABAE'
          }
        }
        post '/celebrities', params: celebrity_params
          celebrity = Celebrity.first
            celebrities = Celebrity.all
            delete "/celebrities/#{celebrity.id}"
         expect(response).to have_http_status(200)
        expect(celebrities). to be_empty
     end
   end

   describe "without a name" do 
    it "doesn't create a celebrity without a name" do
      celebrity_params = {
        celebrity: {
          age: "2",
          stared_in: 'Walks in the park',
          image: 'https://images.unsplash.com/photo-1529778873920-4da4926a72c2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1036&q=80'
        }
      }
     
      post '/celebrities', params: celebrity_params
       expect(response.status).to eq 422
        json = JSON.parse(response.body)
      expect(json['name']).to include "can't be blank"
    end
  end


end




    