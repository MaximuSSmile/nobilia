class PortfolioFotosController < ApplicationController

	before_action :find_portfoliofoto, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!, except: [:index, :show]

	def index
		@portfoliofoto = Portfoliofoto.all.order("created_at DESC")
	end

	def show
	end

	def new
		@portfoliofoto = current_user.portfoliofoto.build
	end

	def create
		@portfoliofoto = current_user.portfoliofoto.build(portfoliofoto_params)

		if @portfoliofoto.save
			redirect_to @portfoliofoto, notice: "Successfully created new recipe"
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @portfoliofoto.update(recipe_params)
			redirect_to @portfoliofoto
		else
			render 'edit'
		end
	end

	def destroy
		@portfoliofoto.destroy
		redirect_to root_path, notice: "Successfully deleted recipe"
	end

	private

	def portfoliofoto_params
		params.require(:portfoliofoto).permit(:title, :description, :turn, :image)
	end

	def find_portfoliofoto
		@portfoliofoto = Portfoliofoto.find(params[:id])
	end
end
