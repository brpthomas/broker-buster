class CorpsController < ApplicationController
	before_action :set_corp, only: [:show, :update, :destory]

	def index 
		@corps = Corp.all
		render :json => @corps 
	end

	def show 
		render :json => @corp
	end

	def create
	end

	def update
	end

	def destroy 
	end

	private

	def corp_parmas
		params.permit(:name, :descrip, :cusip, :coupon, :yield, :maturity, :sprating, :moodyrating, :availablelot)
	end

	def set_corp
		@corp = Corp.find(params[:id])
	
	end


end
