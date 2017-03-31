class IgaBaselinesController < ApplicationController
  before_action :set_iga_baseline, only: [:show, :edit, :update, :destroy]

  # GET /iga_baselines
  # GET /iga_baselines.json
  def index
    @iga_baselines = IgaBaseline.all
  end

  # GET /iga_baselines/1
  # GET /iga_baselines/1.json
  def show
  end

  # GET /iga_baselines/new
  def new
    @iga_baseline = IgaBaseline.new
  end

  # GET /iga_baselines/1/edit
  def edit
  end

  # POST /iga_baselines
  # POST /iga_baselines.json
  def create
    @iga_baseline = IgaBaseline.new(iga_baseline_params)

    respond_to do |format|
      if @iga_baseline.save
        format.html { redirect_to @iga_baseline, notice: 'Iga baseline was successfully created.' }
        format.json { render :show, status: :created, location: @iga_baseline }
      else
        format.html { render :new }
        format.json { render json: @iga_baseline.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /iga_baselines/1
  # PATCH/PUT /iga_baselines/1.json
  def update
    respond_to do |format|
      if @iga_baseline.update(iga_baseline_params)
        format.html { redirect_to @iga_baseline, notice: 'Iga baseline was successfully updated.' }
        format.json { render :show, status: :ok, location: @iga_baseline }
      else
        format.html { render :edit }
        format.json { render json: @iga_baseline.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /iga_baselines/1
  # DELETE /iga_baselines/1.json
  def destroy
    @iga_baseline.destroy
    respond_to do |format|
      format.html { redirect_to iga_baselines_url, notice: 'Iga baseline was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_iga_baseline
      @iga_baseline = IgaBaseline.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def iga_baseline_params
      params.require(:iga_baseline).permit(:server_name, :ip, :os, :version_os, :qmgr, :version_mq, :broker, :version_broker, :comment)
    end
end
