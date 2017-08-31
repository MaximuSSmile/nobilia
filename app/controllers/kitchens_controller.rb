class KitchensController < ApplicationController
    before_action :find_kitchen, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!, except: [:index, :show]

	def index
		@kitchen = Kitchen.all.order(:kitchen_turn)
	end

	def show
	end

	def new
		@kitc = Kitchen.all.order("created_at DESC")
		@kitchen = current_user.kitchens.build
	end

	def create
		@kitchen = current_user.kitchens.build(kitchen_params)

		if @kitchen.save
			redirect_to @kitchen, notice: "Successfully created new recipe"
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @kitchen.update(kitchen_params)
			redirect_to @kitchen
		else
			render 'edit'
		end
	end

	def destroy
		@kitchen.destroy
		redirect_to kitchens_path, notice: "Successfully deleted recipe"
	end

	private

	def kitchen_params
		params.require(:kitchen).permit(:kitchen, :description, :kitchen_turn, 
			fkitchens_attributes: [:id, :title, :description, :turn, 
				:model, :material, :manufacture, :kitimage, :_destroy])
	end

	def find_kitchen
		@kitchen = Kitchen.find(params[:id])
	end

	
end
