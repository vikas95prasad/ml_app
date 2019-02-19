class BlackFridaysController < ApplicationController
  before_action :set_black_friday, only: [:show, :edit, :update, :destroy]

  # GET /black_fridays
  # GET /black_fridays.json
  def index
    @black_fridays = BlackFriday.paginate(:page => params[:page], :per_page => 10)
  end

  # GET /black_fridays/1
  # GET /black_fridays/1.json
  def show
  end

  # GET /black_fridays/new
  def new
    @black_friday = BlackFriday.new
  end

  # GET /black_fridays/1/edit
  def edit
  end

  # POST /black_fridays
  # POST /black_fridays.json
  def create
    @black_friday = BlackFriday.new(black_friday_params)

    respond_to do |format|
      if @black_friday.save
        format.html { redirect_to @black_friday, notice: 'Black friday was successfully created.' }
        format.json { render :show, status: :created, location: @black_friday }
      else
        format.html { render :new }
        format.json { render json: @black_friday.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /black_fridays/1
  # PATCH/PUT /black_fridays/1.json
  def update
    respond_to do |format|
      if @black_friday.update(black_friday_params)
        format.html { redirect_to @black_friday, notice: 'Black friday was successfully updated.' }
        format.json { render :show, status: :ok, location: @black_friday }
      else
        format.html { render :edit }
        format.json { render json: @black_friday.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /black_fridays/1
  # DELETE /black_fridays/1.json
  def destroy
    @black_friday.destroy
    respond_to do |format|
      format.html { redirect_to black_fridays_url, notice: 'Black friday was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_black_friday
      @black_friday = BlackFriday.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def black_friday_params
      params.require(:black_friday).permit(:user_id, :product_id, :gender, :age, :occupation, :city_category, :stay_in_current_city_years, :marital_status, :product_category_1, :product_category_2, :product_category_3, :purchase)
    end
end
