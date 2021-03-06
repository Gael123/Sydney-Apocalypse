class HospitalsController < ApplicationController

  # before_action :set_hospital, only: [:show, :edit, :update, :destroy]

  # GET /gardens
  # GET /gardens.json
 def index
    if params[:query].present?
      @hospitals = Hospital.where( "name ILIKE ?", "%#{params[:query]}%")
    else
      @hospitals = Hospital.geocoded
    end
    # @superheroes = Superhero.geocoded #returns superheroes with coordinates
    @markers = @hospitals.map do |hospitals|
      {
        lat: hospital.latitude,
        lng: hospital.longitude,
        infoWindow: { content: render_to_string(partial: "/hotels/map_box", locals: { hotel: hotel }) },
        id: hospital.id

      }
    end
  end

  # GET /gardens/1
  # GET /gardens/1.json
  def show
    @hospital = Hospital.find(params[:id])
    # @room = Rooms.new
    @marker =
      [{
        lat: @hospital.latitude,
        lng: @hospital.longitude,
        image_url: helpers.asset_url('map-icon.png')
      }]
  end

  # GET /gardens/new
  def new
    @hospital= Hospital.new
  end

  # GET /gardens/1/edit
  def edit
  end

  # POST /gardens
  # POST /gardens.json
  def create
    @hospital = Hospital.new(hospital_params)

    respond_to do |format|
      if @hospital.save
        format.html { redirect_to @hospital, notice: 'Hospital added.' }
        format.json { render :show, status: :created, location: @hospital }
      else
        format.html { render :new }
        format.json { render json: @hospital.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    respond_to do |format|
      if @hospital.update(hospital_params)
        format.html { redirect_to @hospital, notice: 'Hospital updated.' }
        format.json { render :show, status: :ok, location: @hospital }
      else
        format.html { render :edit }
        format.json { render json: @hospital.errors, status: :unprocessable_entity }
      end
    end
  end




 private
    # Use callbacks to share common setup or constraints between actions.
    def set_hospital
      @hospital = Hospital.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def hospital_params
      params.require(:hospital).permit(:name,:latitude,:longitude)
    end
end


