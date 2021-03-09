require "htmlcsstoimage"

class ProjectsController < ApplicationController
   

    def index
        @projects = Project.all

        render json: @projects
    end

    def create

        client = HTMLCSSToImage.new(user_id: "d837701f-a96c-4915-8ead-e5643389935d", api_key: "70825932-df8e-4c4e-9f4f-c995ba4bc845")

        params[:projectTitle]
        params[:html]
        params[:css]
        params[:js]

        image = client.create_image(params[:html], css: params[:css])

        @project = Project.create(title: params[:projectTitle], html: params[:html], css: params[:css], javascript: params[:js], image_url: image.url)

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

    def update
        client = HTMLCSSToImage.new(user_id: "d837701f-a96c-4915-8ead-e5643389935d", api_key: "70825932-df8e-4c4e-9f4f-c995ba4bc845")

        image = client.create_image(params[:html], css: params[:css])

        @project = Project.find(params[:id])
        
        @project.update(html: params[:html], css: params[:css], javascript: params[:javascript], image_url: image.url)
        
        render json: @project
    end




end
