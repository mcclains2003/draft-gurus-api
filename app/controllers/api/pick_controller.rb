class API::PickController < ApplicationController
    before_action :set_pick, only: [:show, :update, :destroy]

    def index
      render json: Pick.all
    end
  
    def show
      render json: @pick
    end
  
    def create
      @pick = Pick.new(pick_params)
      
      if @pick.save
          render json: @pick
      else
          render_errors_in_json
      end
    end
  
    def update
      if @pick.update(pick_params)
          render json: @pick
      else
          render_errors_in_json
      end
    end
  
    def destroy
      if @pick.destroy
        render json: @pick, status: 200
      else
        render json: { message: "Unable to Remove this pick!" }, status:400
      end
    end
  
    private
  
    def pick_params
        params.require(:pick).permit(:name)
    end
  
    def set_pick
        @pick = Pick.find_by(id: params[:id])
  
        if !@pick
            render json: { 
                errors: { 
                    messages: { pick: "Pick can't be found" }
                }
            }, status: 404
        end
    end
  
    def render_errors_in_json
        render json: { 
            errors: { 
                messages: @pick.errors.messages
            }
        }, status: 422
    end

end
