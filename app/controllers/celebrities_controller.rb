class CelebritiesController < ApplicationController

    def index
        celebrities = Celebrity.all 
        render json: celebrities
    end
  
    def create
        celebrity = Celebrity.create(celebrity_params)
        if celebrity.valid?
            render json: celebrity 
        end
    end
  
    def update
        celebrity = Celebrity.find(params[:id])
        celebrity.update(celebrity_params)
        if celebrity.valid?
            render json: celebrity 
        end
    end
  
    def destroy
        celebrity = Celebrity.find(params[:id])
        celebrity.destroy
        render json: celebrity
    end

    private
    def celebrity_params
        params.require(:celebrity).permit(:name, :age, :stared_in, :image)
    end
end
