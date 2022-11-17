class ProjectsController < ApplicationController
    before_action :set_project, only: %i[show edit update destroy]

    def index
        @projects = Project.order(:id)
    end

    def new
        @project = Project.new
    end

    def create
        @project = Project.new(project_params)
        if @project.save
            redirect_to projects_path
        else
            render :new
        end
    end

    def show
    end

    def edit
    end

    def update
        if @project.update!(project_params)
            redirect_to projects_path
        else
            render :edit
        end
    end

    def destroy
        @project.destroy
    end

    private

    def set_project
        @project = Project.find(params[:id])
    end

    def project_params
        params.require(:project).permit(:title, :description, :status, :image)
    end
end
