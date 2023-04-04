require 'rails_helper'

RSpec.describe Celebrity, type: :model do
  it "should validate name" do
      celebrity = Celebrity.create(age: 30,stared_in: 'Bridgerton', image:'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.independent.co.uk%2Farts-entertainment%2Ftv%2Ffeatures%2Fluke-newton-interview-bridgerton-season-2-b2037973.html&psig=AOvVaw0S-DtIW1tehqjB1_dA8KFm&ust=1680645077806000&source=images&cd=vfe&ved=0CA8QjRxqFwoTCNiX0PjYjv4CFQAAAAAdAAAAABAE'
    )
        expect(celebrity.errors[:name]).to_not be_empty
  end


    it "should validate age" do
      celebrity = Celebrity.create(name: 'Luke Newton',
        stared_in: 'Bridgerton',
          image:'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.independent.co.uk%2Farts-entertainment%2Ftv%2Ffeatures%2Fluke-newton-interview-bridgerton-season-2-b2037973.html&psig=AOvVaw0S-DtIW1tehqjB1_dA8KFm&ust=1680645077806000&source=images&cd=vfe&ved=0CA8QjRxqFwoTCNiX0PjYjv4CFQAAAAAdAAAAABAE'
      )
        expect(celebrity.errors[:age]).to_not be_empty
    end 



        it "should validate stared_in " do
          celebrity = Celebrity.create(name: 'Luke Newton',
          age: 30,
          image:'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.independent.co.uk%2Farts-entertainment%2Ftv%2Ffeatures%2Fluke-newton-interview-bridgerton-season-2-b2037973.html&psig=AOvVaw0S-DtIW1tehqjB1_dA8KFm&ust=1680645077806000&source=images&cd=vfe&ved=0CA8QjRxqFwoTCNiX0PjYjv4CFQAAAAAdAAAAABAE'
          )
          expect(celebrity.errors[:stared_in]).to_not be_empty

    end


 it "should validate image " do
          celebrity = Celebrity.create(name: 'Luke Newton',
          age: 30,
          stared_in: 'Bridgerton'
          
          )
          expect(celebrity.errors[:image]).to_not be_empty

 end


end
