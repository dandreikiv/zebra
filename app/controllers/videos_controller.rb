class VideosController < ApplicationController
  def index
    @videos = Video.all
    @categories = Category.all
  end
  
  def show
    @video = Video.find(params[:id])
  end
  
  def new
    @video = Video.new
  end
  
  def create 
    @video = Video.new(params[:video])
    
    if @video.save
      redirect_to videos_path, :notice => "Your video has been added"
    else 
      render "new"
    end
    
  end
  
  def edit
     @video = Video.find(params[:id])
  end
  
  def update
    @video = Video.find(params[:id])

    respond_to do |format|
      if @video.update_attributes(params[:video])
        format.html { redirect_to @video, notice: 'video was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end
  
end
