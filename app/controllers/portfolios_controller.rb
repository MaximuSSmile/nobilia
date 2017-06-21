class PortfoliosController < ApplicationController
	before_action :find_portfolio, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!, except: [:index, :show]

	def index
		@portfolio = Portfolio.all.order("created_at DESC")
	end

	def show
	end

	def new
		@portfolio = current_user.portfolios.build
	end

	def create
		@portfolio = current_user.portfolios.build(portfolio_params)

		if @portfolio.save
			redirect_to @portfolio, notice: "Successfully created new recipe"
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @portfolio.update(portfolio_params)
			redirect_to @portfolio
		else
			render 'edit'
		end
	end

	def destroy
		@portfolio.destroy
		redirect_to root_path, notice: "Successfully deleted recipe"
	end

	private

	def portfolio_params
		params.require(:portfolio).permit(:title, :city, :description1, :description2, :portfolio_turn, :image,
		 kitchensis_attributes: [:id, :ki, :_destroy], kitchensions_attributes: [:id, :kit, :_destroy], technitions_attributes: [:id, :tech, :_destroy], poimages_attributes: [:id, :pimg, :_destroy])
	end

	def find_portfolio
		@portfolio = Portfolio.find(params[:id])
	end

end
