class DiseasesController < ApplicationController
  # before_action :set_disease, only: [:show, :edit, :update, :destroy]
  # def index
  #   @diseases = Pet.all
  # end

  # def show
  # end

  # def new
  #   @disease = Disease.new
  # end

  # def create
  #   @disease = Disease.new(disease_params)
  #   if @disease.save
  #     redirect_to disease_path(@disease)
  #   else
  #     render 'new'
  #   end
  # end

  # def edit
  # end

  # def update
  #   if @disease.update(disease_params)
  #     redirect_to disease_path(@disease)
  #   else
  #     render 'edit'
  #   end
  # end

  # def destroy
  #   @disease.destroy
  #   redirect_to diseases_path
  # end

  # private

  # def disease_params
  #   params.require(:disease).permit(:name, :description)
  # end

  # def set_pet
  #   @disease = Disease.find(params[:id])
  # end
end
