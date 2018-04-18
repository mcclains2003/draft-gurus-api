class API::PlayersController < ApplicationController
    before_action :set_player, only: [:show, :update, :destroy]

    def index
      render json: Player.all
    end
  
    def show
      render json: @player
    end
  
    def create
      @player = Player.new(player_params)
      
      if @player.save
          render json: @player
      else
          render_errors_in_json
      end
    end
  
    def update
      if @player.update(player_params)
          render json: @player
      else
          render_errors_in_json
      end
    end
  
    def destroy
      if @player.destroy
        render json: @player, status: 200
      else
        render json: { message: "Unable to Remove this player!" }, status:400
      end
    end
  
    private
  
    def player_params
        params.require(:player).permit(:name, :school, :year, :position, :height, :weight)
    end
  
    def set_player
        @player = Player.find_by(id: params[:id])
  
        if !@player
            render json: { 
                errors: { 
                    messages: { player: "Player can't be found" }
                }
            }, status: 404
        end
    end
  
    def render_errors_in_json
        render json: { 
            errors: { 
                messages: @player.errors.messages
            }
        }, status: 422
    end

end
