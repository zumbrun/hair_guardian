class DataController < ApplicationController
  before_action :set_cap, only: [:create, :destroy]

  # GET /data
  # GET /data.json
  def index
    @data = Datum.all
  end

   def create
    @datum = @cap.data.new(datum_params)

    respond_to do |format|
      if @datum.save
        format.html { redirect_to @cap, notice: 'Datum was successfully created.' }
        format.json { render :show, status: :created, location: @datum }
      else
        format.html { redirect_to @cap, alert: 'Unable to add data!' }
        format.json { render json: @datum.errors, status: :unprocessable_entity }
      end
    end
  end
  
  # DELETE /data/1
  # DELETE /data/1.json
  def destroy
    @datum = @cap.data.find(params[:id])
    @datum.destroy
    respond_to do |format|
      format.html { redirect_to @cap, notice: 'Datum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_cap
      @cap = Cap.find(params[:cap_id])
    # Use callbacks to share common setup or constraints between actions.
    end
    # Only allow a list of trusted parameters through.
    def datum_params
      params.require(:datum).permit(:temp1, :temp2, :temp3, :temp4, :flow_rate, :rail_power, :battery_power, :device_id)
    end
end
