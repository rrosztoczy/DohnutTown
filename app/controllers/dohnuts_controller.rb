class DohnutsController < ApplicationController
  before_action :set_dohnut, only: [:show, :edit, :update, :destroy]

  # GET /dohnuts
  # GET /dohnuts.json
  def index
    @dohnuts = Dohnut.all
  end

  # GET /dohnuts/1
  # GET /dohnuts/1.json
  def show
  end

  # GET /dohnuts/new
  def new
    @dohnut = Dohnut.new
  end

  # GET /dohnuts/1/edit
  def edit
  end

  # POST /dohnuts
  # POST /dohnuts.json
  def create
    @dohnut = Dohnut.new(dohnut_params)

    respond_to do |format|
      if @dohnut.save
        format.html { redirect_to @dohnut, notice: 'Dohnut was successfully created.' }
        format.json { render :show, status: :created, location: @dohnut }
      else
        format.html { render :new }
        format.json { render json: @dohnut.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dohnuts/1
  # PATCH/PUT /dohnuts/1.json
  def update
    respond_to do |format|
      if @dohnut.update(dohnut_params)
        format.html { redirect_to @dohnut, notice: 'Dohnut was successfully updated.' }
        format.json { render :show, status: :ok, location: @dohnut }
      else
        format.html { render :edit }
        format.json { render json: @dohnut.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dohnuts/1
  # DELETE /dohnuts/1.json
  def destroy
    @dohnut.destroy
    respond_to do |format|
      format.html { redirect_to dohnuts_url, notice: 'Dohnut was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dohnut
      @dohnut = Dohnut.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dohnut_params
      params.require(:dohnut).permit(:flavor, :size, :sprinkles, :ryan_name)
    end
end
