class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]
  before_filter :is_owner, only: [:edit, :update]

  # GET /projects
  # GET /projects.json
  def index
    case params[:sort]
    when "title"
      @projects = Project.order("title")
    when "course"
      @projects = Project.all.sort_by{|i| i.course.full_title }
    when "comments"
      @projects = Project.all.sort_by{|i| i.evaluations.count }
    when "average_rating"
      @projects = Project.all.sort_by{|i| i.average_rating }
    else
      @projects = Project.order("title")
    end
    if params[:sort_order] == 'desc'
      @projects = @projects.reverse
    end
    if params[:limit]
      @projects = @projects.select{|pj| pj.users.include?(current_user) }
    end
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
  end

  # GET /projects/new
  def new
    @project = Project.new
  end

  # GET /projects/1/edit
  def edit
  end

  # POST /projects
  # POST /projects.json
  def create
    @project = Project.new(project_params)
    respond_to do |format|
      if @project.save
        if !is_admin
          @project.users << current_user
        end
        format.html { redirect_to @project, notice: 'Project was successfully created.' }
        format.json { render action: 'show', status: :created, location: @project }
      else
        format.html { render action: 'new' }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to @project, notice: 'Project was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    note = nil
    if has_permission && @project.users.count == 1
      @project.project_participants.all.each do |pp|
        pp.destroy
      end
      @project.destroy
    elsif @project.users.count > 1
      note = "This project has #{@project.users.count} participants. Cannot delete project which has multiple participants."
    end
    respond_to do |format|
      format.html { redirect_to projects_url, notice: note }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:title, :abstract, :website, :course_id)
    end

    def has_permission
      (current_user.isadmin? || @project.users.include?(current_user)) if current_user
    end

    helper_method :has_permission

    def is_owner
      if !has_permission
        redirect_to root_url, notice: "Not authorized."
      end
    end

end
