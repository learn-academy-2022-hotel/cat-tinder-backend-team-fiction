class CharactersController < ApplicationController
    def index
        characters = Character.all
        render json: characters
    end
  
    def create
        character = Character.create(character_params)
        render json: character
    end
  
    def update
    end
  
    def destroy
    end

    private
    def character_params
        params.require(:character).permit(:name, :age, :enjoys, :image)
    end
end
