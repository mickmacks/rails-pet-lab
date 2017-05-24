class PetsController < ApplicationController

  def index
    @owner = Owner.all
  end

  def show
    owner_id = params[:id]
    @owner = Owner.find_by_id(owner_id).pets
  end

  # TODO: set up *new* method with data for new view

  # TODO: set up *create* method with database interactions for create
  # TODO: handle save errors and communicate issues to user

  private
  def pet_params
    params.require(:pet).permit(:name, :breed, :date_of_birth)
  end

end
