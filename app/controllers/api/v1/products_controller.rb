class Api::V1::ProductsController < ApplicationController


    #LISTS ALL STORIES TO BE ACQUIRED BY FRONT END.
        def index   
            @product = Product.all
            render json: ProductSerializer.new(@product)
        end
    
    
    #NOT YET IMPLEMENTED
            def show
                @product = Product.find_by_id(params[:id])
                render json: @product
             end
       
    
      
         def create 
           if current_api_v1_user
            @user = current_api_v1_user
            @image = Image.new(url: params[:image_file])
            #SETTING IMAGE INSTANCE BY URL NAME AND SAVING IT TO USER RELATION USER.IMAGES
            @category = Category.find_by_name(params[:categories])
             #ASSIGNING CATEGORY INSTANCE BY NAME AND SAVING IT TO USER RELATION USER.CATEGORIES
            @product = Product.new(product_params)
            #ASSIGNING STORYTEXT INSTANCE BY NAME AND SAVING IT TO USER RELATION USER.STORYTEXT
            @product.categories << @category
            @product.images << @image
            @user.products << @product
            @user.images << @image
             if @product.save      
               render json: @product, status: :created
             else
                 render json: {error: "invalid name or password"}
             end
         elsif !current_api_v1_user
             render json: {error: "must be logged in"}  
        end
    end
    
    
    
        private
    
            def product_params 
            params.require(:product).permit(:name, :id, :description, :text_content, :user_id)    
        end
        
    
    end
     