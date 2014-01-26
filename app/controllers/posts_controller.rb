class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy, :claim]
  before_action :authenticate_user!, only: [:new, :edit, :destroy, :claim]

  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @images = @post.images
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)
    @post.donor_id = current_user.id
    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render action: 'show', status: :created, location: @post }
      else
        format.html { render action: 'new' }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def claim
    respond_to do |format|
      if @post.artist_id == nil
        if @post.update_attribute(:artist_id, current_user.id)
          format.html { redirect_to @post, notice: "You've claimed this junk." }
          format.json { head :no_content }
        else
          format.html { redirect_to @post, notice: "There was a problem with the system." }
          format.json { render json: @post.errors, status: :unprocessable_entity }
        end
      else
        if @post.artist_id == current_user.id
          if @post.update_attribute(:artist_id, nil)
            format.html { redirect_to @post, notice: "You've unclaimed this junk."}
          else
            format.html { redirect_to @post, notice: "There was a problem, and you weren't able to unclaim this junk." }
          end
        else
          format.html { redirect_to @post, notice: "Sorry, someone has already claimed this junk."}
        end
      end
    end
  end

  def about
  end
  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :description, :price, :address)
    end
end
