class API::DraftYearsController < ApplicationController
    before_action :set_draft_year, only: [:show, :update, :destroy]

    def index
      render json: DraftYear.all
    end
  
    def show
      render json: @draft_year
    end
  
    # def create
    #   @draft_year = DraftYear.new(draft_year_params)
      
    #   if @draft_year.save
    #       render json: @draft_year
    #   else
    #       render_errors_in_json
    #   end
    # end
  
    # def update
    #   if @draft_year.update(draft_year_params)
    #       render json: @draft_year
    #   else
    #       render_errors_in_json
    #   end
    # end
  
    # def destroy
    #   if @draft_year.destroy
    #     render json: @draft_year, status: 200
    #   else
    #     render json: { message: "Unable to Remove this draft year!" }, status:400
    #   end
    # end
  
    private
  
    def draft_year_params
        params.require(:draft_year).permit(:year)
    end
  
    def set_draft_year
        @draft_year = DraftYear.find_by(id: params[:id])
  
        if !@draft_year
            render json: { 
                errors: { 
                    messages: { draft_year: "Draft year can't be found" }
                }
            }, status: 404
        end
    end
  
    def render_errors_in_json
        render json: { 
            errors: { 
                messages: @draft_year.errors.messages
            }
        }, status: 422
    end

end
