class API::DraftController < ApplicationController
    before_action :set_draft, only: [:show, :update, :destroy]

    def index
      render json: Draft.all
    end
  
    def show
      render json: @draft
    end
  
    def create
      @draft = Draft.new(draft_params)
      
      if @draft.save
          render json: @draft
      else
          render_errors_in_json
      end
    end
  
    def update
      if @draft.update(draft_params)
          render json: @draft
      else
          render_errors_in_json
      end
    end
  
    def destroy
      if @draft.destroy
        render json: @draft, status: 200
      else
        render json: { message: "Unable to Remove this draft!" }, status:400
      end
    end
  
    private
  
    def draft_params
        params.require(:draft).permit(:name)
    end
  
    def set_draft
        @draft = Draft.find_by(id: params[:id])
  
        if !@draft
            render json: { 
                errors: { 
                    messages: { draft: "Draft can't be found" }
                }
            }, status: 404
        end
    end
  
    def render_errors_in_json
        render json: { 
            errors: { 
                messages: @draft.errors.messages
            }
        }, status: 422
    end

end
