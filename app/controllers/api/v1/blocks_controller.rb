class Api::V1::BlocksController < ApplicationController

  def index
   @blocks = Block.all
   render json: @blocks
  end

  def create
    @block = Block.create(block_params)
    render json: @block
  end

  def update
   @block = Block.find(params[:id])

   @block.update(block_params)
   if @block.save
     render json: @block
   else
     render json: {errors: @block.errors.full_messages}, status: 422
   end
  end

  def destroy
    @block = Block.find(params[:id])
    @block.delete
  end

  private
  def block_params
   params.require(:block).permit(:x1, :y1, :x2, :y2, :scene_id)
  end
end
