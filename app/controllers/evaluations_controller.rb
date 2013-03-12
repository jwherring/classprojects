class EvaluationsController < ApplicationController
  before_action :set_evaluation, only: [:show, :edit, :update, :destroy]
  before_filter :is_owner, only: [:show, :edit, :update, :destroy]

  # GET /evaluations
  # GET /evaluations.json
  def index
    if current_user.isadmin?
      @evaluations = Evaluation.all
    else
      @evaluations = Evaluation.where("user_id = ?", current_user.id)
    end
  end

  # GET /evaluations/1
  # GET /evaluations/1.json
  def show
  end

  # GET /evaluations/new
  def new
    previous = Evaluation.find_by_user_id_and_project_id(current_user.id, params[:project_id])
    if previous
      redirect_to edit_evaluation_path(previous)
    else
      @evaluation = Evaluation.new
      @evaluation.user_id = current_user.id
      @evaluation.project_id = params[:project_id]
    end
  end

  # GET /evaluations/1/edit
  def edit
  end

  # POST /evaluations
  # POST /evaluations.json
  def create
    @evaluation = Evaluation.new(evaluation_params)

    respond_to do |format|
      if @evaluation.save
        format.html { redirect_to @evaluation, notice: 'Evaluation was successfully created.' }
        format.json { render action: 'show', status: :created, location: @evaluation }
      else
        format.html { render action: 'new' }
        format.json { render json: @evaluation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /evaluations/1
  # PATCH/PUT /evaluations/1.json
  def update
    respond_to do |format|
      if @evaluation.update(evaluation_params)
        format.html { redirect_to @evaluation, notice: 'Evaluation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @evaluation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /evaluations/1
  # DELETE /evaluations/1.json
  def destroy
    @evaluation.destroy
    respond_to do |format|
      format.html { redirect_to evaluations_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_evaluation
      @evaluation = Evaluation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def evaluation_params
      params.require(:evaluation).permit(:user_id, :project_id, :comment, :rating)
    end

    def has_permission
      current_user.isadmin? || @evaluation.user == current_user
    end

    helper_method :has_permission

    def is_owner
      if !has_permission
        redirect_to root_url, notice: "Not authorized."
      end
    end
end
