class Api::V1::BallsController < ApplicationController

  def index
   @balls = Ball.all
   render json: @balls
  end

  def create
    @ball = Ball.create(ball_params)
    render json: @ball
  end


  def update
   @ball = Ball.find(params[:id])

   @ball.update(ball_params)
   if @ball.save
     render json: @ball
   else
     render json: {errors: @ball.errors.full_messages}, status: 422
   end
  end

  def destroy
    @ball = Ball.find(params[:id])
    @ball.delete
  end

  private
  def ball_params
   params.require(:ball).permit(:x, :y, :scene_id)
  end

end
