class Api::V1::ScenesController < ApplicationController

  def index
   @scenes = Scene.all
   render json: @scenes
  end

  def create
    @scene = Scene.create(scene_params)
    render json: @scene
  end

  def show
    @scene = Scene.find(params[:id])
    render json: @scene, include: ['balls', 'blocks']
  end

  def balls
    @scene = Scene.find(params[:id])
    render json: @scene.balls
  end



  def update
   @scene = Scene.find(params[:id])

   @scene.update(scene_params)
   if @scene.save
     render json: @scene
   else
     render json: {errors: @scene.errors.full_messages}, status: 422
   end
  end

  def destroy
    @scene = Scene.find(params[:id])
    @scene.delete
  end

  private
  def scene_params
   params.require(:scene).permit(:name, :balls, :blocks)
  end


end
