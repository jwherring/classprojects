class ProjectParticipantsController < ApplicationController
  before_action :set_project_participant, only: [:show, :edit, :update, :destroy]

  # GET /project_participants
  # GET /project_participants.json
  def index
    @project_participants = ProjectParticipant.all
    case params[:sort]
    when "project"
      @project_participants = @project_participants.sort_by{|pp| pp.project.title }
    when "user"
      @project_participants = @project_participants.sort_by{|pp| pp.user.full_name }
    else 
      @project_participants = @project_participants.sort_by{|pp| pp.project.title }
    end
    if params[:sort_order] == 'desc'
      @project_participants = @project_participants.reverse
    end

  end

  # GET /project_participants/1
  # GET /project_participants/1.json
  def show
  end

  # GET /project_participants/new
  def new
    @project_participant = ProjectParticipant.new
  end

  # GET /project_participants/1/edit
  def edit
  end

  # POST /project_participants
  # POST /project_participants.json
  def create
    @project_participant = ProjectParticipant.new(project_participant_params)

    respond_to do |format|
      if is_admin
        if @project_participant.save
          format.html { redirect_to @project_participant, notice: 'Project participant was successfully created.' }
          format.json { render action: 'show', status: :created, location: @project_participant }
        else
          format.html { render action: 'new' }
          format.json { render json: @project_participant.errors, status: :unprocessable_entity }
        end
      else
        if user_owns_project && @project_participant.save
          format.html { redirect_to projects_path, notice: 'Project participant was successfully created.' }
          format.json { render action: 'show', status: :created, location: @project_participant }
        else
          format.html { render action: 'new' }
          format.json { render json: @project_participant.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # PATCH/PUT /project_participants/1
  # PATCH/PUT /project_participants/1.json
  def update
    respond_to do |format|
      if @project_participant.update(project_participant_params)
        format.html { redirect_to @project_participant, notice: 'Project participant was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @project_participant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_participants/1
  # DELETE /project_participants/1.json
  def destroy
    @project_participant.destroy
    if is_admin
      respond_to do |format|
        format.html { redirect_to project_participants_url }
        format.json { head :no_content }
      end
    else 
      respond_to do |format|
        format.html { redirect_to projects_url }
        format.json { head :no_content }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_participant
      @project_participant = ProjectParticipant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_participant_params
      params.require(:project_participant).permit(:project_id, :user_id)
    end

    def has_permission
      (current_user.isadmin? || (@project_participant.user == current_user)) if current_user
    end

    helper_method :has_permission

    def is_owner
      if !has_permission
        redirect_to root_url, notice: "Not authorized."
      end
    end

    def user_owns_project
      current_user.in?(Project.find(params[:project_participant][:project]).users)
    end

end
