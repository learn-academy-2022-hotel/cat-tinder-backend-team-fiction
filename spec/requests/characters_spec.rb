require 'rails_helper'

RSpec.describe "Characters", type: :request do
  describe "GET /index" do
    it "gets a list of characters" do
      Character.create(
        name: 'Johnny Bravo',
        age: 31,
        enjoys: 'Flexing on haters',
        image: 'https://cdna.artstation.com/p/assets/images/images/020/372/674/large/alejandro-tio-gary-johny-bravo.jpg?1567531127'
      )
      get '/characters'

      character = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(character.length).to eq 1
    end
  end
end

describe "POST /create" do
  it "creates a character" do
    character_params = {
      character: {
        name: 'Naruto',
        age: 28,
        enjoys: 'Ramen',
        image: 'https://images.unsplash.com/photo-1594007759138-855170ec8dc0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bmFydXRvfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'
      }
    }

    post '/characters', params: character_params

    expect(response).to have_http_status(200)

    character = Character.first

    expect(character.name).to eq 'Naruto'
  end
end