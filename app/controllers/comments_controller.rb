class CommentsController < ApplicationController
  
  # GET /comments
  # GET /comments.json
  def index
    @comments = Comment.all
    @comment=Comment.new 
  end

  # GET /comments/1
  # GET /comments/1.json
  def show
     @comments=Comment.all
     respond_to do |format|
         format.xml {render :xml => @comments}
#     
#      
#        
    end
  end

  # GET /comments/new
   def new
    @comment = Comment.new
  end

  # GET /comments/1/edit
  def edit
    @comment=Comment.find(params[:id])
    #render :action => "index"
  end

  # POST /comments
  # POST /comments.json
  def create
    @comment = Comment.new(comment_params)
    respond_to do |format|
      
        if @comment.save
       
         format.html { redirect_to @comment, notice: 'Comment created.' }
          format.js {}  
         format.json { render json: @comment, status: :created, location: @comment }
        else
           
          format.html { render action: "new" }
          format.json { render json: @comment.errors, status: :unprocessable_entity }
      
       end   
      end
    end
   
  # PATCH/PUT /comments/1
  # PATCH/PUT /comments/1.json
  def update
    @comment=Comment.find(params[:id])
    if @comment.update_attributes(params[:comment])
      flash[:notice] = "Successfully updated comment"
      @comments=Comment.all
      #redirect_to comments_url
    else 
      render :action => "index"
    end 
    # respond_to do |format|
#       if @comment.update(comment_params)
#         format.html { redirect_to @comment, notice: 'Comment was successfully updated.' }
#         format.json { head :no_content }
#       else
#         format.html { render action: 'edit' }
#         format.json { render json: @comment.errors, status: :unprocessable_entity }
#       end
#     end
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @comment=Comment.find(params[:id])
    @comment.destroy
    @comments=Comment.all
    # respond_to do |format|
#       format.html { redirect_to comments_url }
#       format.json { head :no_content }
#     end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:description)
    end
end


