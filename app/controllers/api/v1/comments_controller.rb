class Api::V1::CommentsController < ApplicationController


    def index
        comments = Comment.all
        render json: comments  
    end

    
     def show
        comment = Comment.find_by_id(params[:id])
        render json: comment
     end
     


    private
    
        def category_params 
        params.require(:comment).permit( :name, :category_id, :product_id, :user_id, :image_id)
        end


end
