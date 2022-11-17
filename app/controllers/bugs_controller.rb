class BugsController < ApplicationController
    before_action :set_project, only: %i[index new create] 
    def index
        @bugs = @project.bugs
    end

    def new
        @bug = @project.bugs.build
    end

    def create
        @bug = @project.bugs.create(bug_params)
        redirect_to project_bugs_path(@project.id)
    end

    def edit

    end

    def update
        if @bug.update!(bug_params)
            redirect_to bugs_path
        else
            render :edit
        end
    end

    def destroy
        @bug.destroy
    end

    def show
    end

    private

    def set_project
        @project = Project.find_by(id: params['project_id'])
    end
    def set_bug
        @bug = Bug.find(params[:id])
    end

    def bug_params
        params.require(:bug).permit(:title, :description, :status)
    end
end
