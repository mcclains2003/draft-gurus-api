class API::RoundsController < ApplicationController
    before_action :set_round, only: [:show, :update, :destroy]

    def index
      render json: Round.all
    end
  
    def show
      render json: @round
    end
  
    def create
      @round = Round.new(round_params)
      
      if @round.save
          render json: @round
      else
          render_errors_in_json
      end
    end
  
    def update
      if @round.update(round_params)
          render json: @round
      else
          render_errors_in_json
      end
    end
  
    def destroy
      if @round.destroy
        render json: @round, status: 200
      else
        render json: { message: "Unable to Remove this round!" }, status:400
      end
    end
  
    private
  
    def round_params
        params.require(:round).permit(:round)
    end
  
    def set_round
        @round = Round.find_by(id: params[:id])
  
        if !@round
            render json: { 
                errors: { 
                    messages: { round: "Round can't be found" }
                }
            }, status: 404
        end
    end
  
    def render_errors_in_json
        render json: { 
            errors: { 
                messages: @round.errors.messages
            }
        }, status: 422
    end

end
