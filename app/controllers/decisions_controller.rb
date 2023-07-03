class DecisionsController < ApplicationController
  before_action :set_decision, only: %i[ show edit update destroy ]

  # GET /decisions or /decisions.json
  def index
    @decisions = Decision.all
  end

  # GET /decisions/1 or /decisions/1.json
  def show
  end

  # GET /decisions/new
  def new
    @decision = Decision.new
  end

  # GET /decisions/1/edit
  def edit
  end

  # POST /decisions or /decisions.json
  def create
    @decision = Decision.new(decision_params)

    respond_to do |format|
      if @decision.save
        format.html { redirect_to decision_url(@decision), notice: "Decision was successfully created." }
        format.json { render :show, status: :created, location: @decision }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @decision.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /decisions/1 or /decisions/1.json
  def update
    respond_to do |format|
      if @decision.update(decision_params)
        format.html { redirect_to decision_url(@decision), notice: "Decision was successfully updated." }
        format.json { render :show, status: :ok, location: @decision }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @decision.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /decisions/1 or /decisions/1.json
  def destroy
    @decision.destroy

    respond_to do |format|
      format.html { redirect_to decisions_url, notice: "Decision was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_decision
      @decision = Decision.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def decision_params
      params.require(:decision).permit(:input, :input_type, :project_id)
    end
end
