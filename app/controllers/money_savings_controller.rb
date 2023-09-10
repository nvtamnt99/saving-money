class MoneySavingsController < ApplicationController
  before_action :set_money_saving, only: %i[ show edit update destroy ]

  # GET /money_savings or /money_savings.json
  def index
    @money_savings = MoneySaving.all
  end

  # GET /money_savings/1 or /money_savings/1.json
  def show
  end

  # GET /money_savings/new
  def new
    @money_saving = MoneySaving.new
  end

  # GET /money_savings/1/edit
  def edit
  end

  # POST /money_savings or /money_savings.json
  def create
    @money_saving = MoneySaving.new(money_saving_params)

    respond_to do |format|
      if @money_saving.save
        format.html { redirect_to money_saving_url(@money_saving), notice: "Money saving was successfully created." }
        format.json { render :show, status: :created, location: @money_saving }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @money_saving.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /money_savings/1 or /money_savings/1.json
  def update
    respond_to do |format|
      if @money_saving.update(money_saving_params)
        format.html { redirect_to money_saving_url(@money_saving), notice: "Money saving was successfully updated." }
        format.json { render :show, status: :ok, location: @money_saving }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @money_saving.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /money_savings/1 or /money_savings/1.json
  def destroy
    @money_saving.destroy

    respond_to do |format|
      format.html { redirect_to money_savings_url, notice: "Money saving was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_money_saving
      @money_saving = MoneySaving.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def money_saving_params
      params.require(:money_saving).permit(:saving_date, :amount, :saving_amount)
    end
end
