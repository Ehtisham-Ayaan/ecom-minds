class SavermartsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_savermart, only: %i[ show edit update destroy ]

  # GET /savermarts or /savermarts.json
  def index
    @savermarts = Savermart.all
    render json: @savermarts
  end

  # GET /savermarts/1 or /savermarts/1.json
  def show
  end

  # GET /savermarts/new
  def new
    @savermart = Savermart.new
  end

  # GET /savermarts/1/edit
  def edit
  end

  # POST /savermarts or /savermarts.json
  def create
    @savermart = Savermart.new(savermart_params)

    respond_to do |format|
      if @savermart.save
        format.html { redirect_to savermart_url(@savermart), notice: "Savermart was successfully created." }
        format.json { render :show, status: :created, location: @savermart }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @savermart.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /savermarts/1 or /savermarts/1.json
  def update
    respond_to do |format|
      if @savermart.update(savermart_params)
        format.html { redirect_to savermart_url(@savermart), notice: "Savermart was successfully updated." }
        format.json { render :show, status: :ok, location: @savermart }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @savermart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /savermarts/1 or /savermarts/1.json
  def destroy
    @savermart.destroy

    respond_to do |format|
      format.html { redirect_to savermarts_url, notice: "Savermart was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_savermart
      @savermart = Savermart.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def savermart_params
      params.require(:savermart).permit(
        :name,
        :display,
        :ram,
        :battery,
        :back_camera,
        :release_date,
        :sim_support,
        :phone_dimension,
        :phone_weight,
        :operating_system,
        :processor,
        :gpu,
        :screen_size,
        :screen_resolution,
        :screen_type,
        :screen_protection,
        :front_camera,
        :front_flashlight,
        :front_video_recording,
        :back_flashlight,
        :back_video_recording,
        :internal_memory,
        :card_slot,
        :battery_type,
        :bluetooth,
        :G3,
        :G4,
        :G5,
        :radio,
        :wifi,
        :nfc,
        :faq,
        :box,
        :cond
      )
    end
end
