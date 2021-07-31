class DisputesController < ApplicationController
  before_action :set_dispute, only: %i[ show edit update destroy ]

  # GET /disputes or /disputes.json
  def index
    @disputes = Dispute.all
  end

  # GET /disputes/1 or /disputes/1.json
  def show
  end

  # GET /disputes/new
  def new
    @dispute = Dispute.new
  end

  # GET /disputes/1/edit
  def edit
  end

  # POST /disputes or /disputes.json
  def create
    @dispute = Dispute.new(dispute_params)

    respond_to do |format|
      if @dispute.save
        format.html { redirect_to @dispute, notice: "Dispute was successfully created." }
        format.json { render :show, status: :created, location: @dispute }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dispute.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /disputes/1 or /disputes/1.json
  def update
    respond_to do |format|
      if @dispute.update(dispute_params)
        format.html { redirect_to @dispute, notice: "Dispute was successfully updated." }
        format.json { render :show, status: :ok, location: @dispute }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dispute.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /disputes/1 or /disputes/1.json
  def destroy
    @dispute.destroy
    respond_to do |format|
      format.html { redirect_to disputes_url, notice: "Dispute was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dispute
      @dispute = Dispute.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dispute_params
      params.require(:dispute).permit(:name)
    end
end
