class SubcommentsController < ApplicationController
  before_action :set_subcomment, only: [:show, :edit, :update, :destroy]

  # GET /subcomments
  # GET /subcomments.json
  def index
    @subcomments = Subcomment.all
  end

  # GET /subcomments/1
  # GET /subcomments/1.json
  def show
  end

  # GET /subcomments/new
  def new
    @subcomment = Subcomment.new
  end

  # GET /subcomments/1/edit
  def edit
  end

  # POST /subcomments
  # POST /subcomments.json
  def create

    @post = Post.find(params[:post_id])
    @subcomment = @comment.subcomments.create(subcomment_params)

      flash[:notice] = "Added your comment"
      redirect_to post_path(@post)
    
    #@subcomment = Subcomment.new(subcomment_params)

    #respond_to do |format|
    #  if @subcomment.save
    #    format.html { redirect_to @subcomment, notice: 'Subcomment was successfully created.' }
    #    format.json { render action: 'show', status: :created, location: @subcomment }
    #  else
    #    format.html { render action: 'new' }
    #    format.json { render json: @subcomment.errors, status: :unprocessable_entity }
    #  end
    #end
  #end

  # PATCH/PUT /subcomments/1
  # PATCH/PUT /subcomments/1.json
  def update
    respond_to do |format|
      if @subcomment.update(subcomment_params)
        format.html { redirect_to @subcomment, notice: 'Subcomment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @subcomment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subcomments/1
  # DELETE /subcomments/1.json
  def destroy
    @subcomment.destroy
    respond_to do |format|
      format.html { redirect_to subcomments_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subcomment
      @subcomment = Subcomment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subcomment_params
      params.require(:subcomment).permit(:comment_id, :user_id, :body)
    end
end
