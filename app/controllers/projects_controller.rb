require "htmlcsstoimage"

class ProjectsController < ApplicationController
    before_action :imageFromHTMLCSS, only: [:create, :update]
   

    def index
        @projects = Project.all

        render json: @projects
    end

    def create
        params[:projectTitle]
        params[:html]
        params[:css]
        params[:js]

        @project = Project.create(title: params[:projectTitle], html: params[:html], css: params[:css], javascript: params[:js], image_url: @image.url)

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
        @project = Project.find(params[:id])
        
        @project.update(html: params[:html], css: params[:css], javascript: params[:javascript], image_url: @image.url)
        
        render json: @project
    end


    private

    def imageFromHTMLCSS
        client = HTMLCSSToImage.new(user_id: ENV["ID"], api_key: ENV["API"])
        @image = client.create_image(params[:html], css: params[:css])

    end


end
