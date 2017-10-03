class DetailsController < ApplicationController
   http_basic_authenticate_with name: "abc", password: "secret", except: [:index, :show]
  def index
  	@details= Detail.all
  end
  def create
  	 @detail = Detail.new(detail_params)
  	 if @detail.save
  	 		redirect_to @detail
  	else
  		render 'new'
  	 end
  end
  def show
  	@detail = Detail.find(params[:id])
  end
  def new
  		@detail= Detail.new
  end
  def edit
  		@detail = Detail.find(params[:id])
  	end
  def update
  	@detail = Detail.find(params[:id])
  	if @detail.update(detail_params)
  		redirect_to @detail
  	else
  		render 'edit'
  	end
  end
  def destroy
  	@detail = Detail.find(params[:id])
  	@detail.destroy
  	redirect_to details_path
  end
   private
  	def detail_params
    	params.require(:detail).permit(:FirstName, :LastName, :Address)
  	end
end
