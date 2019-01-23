class ImagesController < ApplicationController
  before_action :set_image, only: [:reply, :show, :edit, :update, :destroy, :like, :unlike]
  before_action :authenticate_user!, only: [:edit, :reply, :update, :destroy, :like, :unlike]
  impressionist actions: [:show], unique: ['impressionable_type', 'impressionable_id', 'session_hash']
  def index
    @images = Image.all.order('created_at DESC')
    @posts = Post.all.order('created_at')
  end

  def show
    @image = Image.find params[:id]
  end

  def new
    @image = current_user.images.build
  end

  def edit
  end

  def create
    @image = current_user.images.build(image_params)

    respond_to do |format|
      if @image.save
        format.html { redirect_to @image, notice: 'Image was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @image.update(image_params)
        format.html { redirect_to @image, notice: 'Image was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @image.destroy
    respond_to do |format|
      format.html { redirect_to images_url, notice: 'Image was successfully destroyed.' }
    end
  end

  def like
    @image.liked_by current_user
    respond_to do |format|
      format.html { redirect_back fallback_location: root_path }
    end
  end

  def unlike
    @image.unliked_by current_user
    respond_to do |format|
      format.html { redirect_back fallback_location: root_path }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image
      @image = Image.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def image_params
      params.require(:image).permit(:title, :description, :user_image)
    end
end
