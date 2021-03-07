class ProjectsController < ApplicationController
   
    def index
        @projects = Project.all

        render json: @projects
    end

    def create
        params[:html]
        params[:css]
        params[:js]

        @project = Project.create(title: "New", html: params[:html], css: params[:css], javascript: params[:js])

        render json: @project
    end

    def show 
        @project = Project.find(params[:id])
        
        render json: @project
    end

    def delete
        @project = Project.destroy(params[:id])

        render json: @project
    end

end
