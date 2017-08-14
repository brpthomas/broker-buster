class CorpsController < ApplicationController
	before_action :set_corp, only: [:show, :update, :destroy, :create]
	def index 
		@corps = Corp.all
		render :json => @corps 
	end

	def show 
		render :json => @corp
	end

	def create
		if @corp.valid?
			@corp.save
			render :json => {:corp => @corp}
		else
			flash[:corp] = @corp.errors.messages
		end 
		
	end

	def update
		puts "HELLO"
		if @corp.update(available_lot: "#{params[:available_lot]}")
			render :json => {:corp => @corp}
		end


	end

	def destroy 
	end

	private

	def corp_params
		params.permit(:name, :descrip, :cusip, :coupon_rate, :yield, :maturity, :sp_rating, :moodys_rating, :available_lot)
	end

	def set_corp
		@corp = Corp.find(params[:id])
	
	end

end
