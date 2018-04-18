class API::TeamsController < ApplicationController
    before_action :set_team, only: [:show, :update, :destroy]

    def index
      render json: Team.all
    end
  
    def show
      render json: @team
    end
  
    def create
      @team = Team.new(team_params)
      
      if @team.save
          render json: @team
      else
          render_errors_in_json
      end
    end
  
    def update
      if @team.update(team_params)
          render json: @team
      else
          render_errors_in_json
      end
    end
  
    def destroy
      if @team.destroy
        render json: @team, status: 200
      else
        render json: { message: "Unable to remove this team!" }, status:400
      end
    end
  
    private
  
    def team_params
        params.require(:team).permit(:name)
    end
  
    def set_team
        @team = Team.find_by(id: params[:id])
  
        if !@team
            render json: { 
                errors: { 
                    messages: { team: "Team can't be found" }
                }
            }, status: 404
        end
    end
  
    def render_errors_in_json
        render json: { 
            errors: { 
                messages: @team.errors.messages
            }
        }, status: 422
    end

end
