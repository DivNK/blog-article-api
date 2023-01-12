class ArticleController < ApplicationController
    #Function for the landing page
    def landing
    end

    #main functiont hat gets called when /article is called in browser
    def index
        
        render json: Article.all
    end
    def show
        v = Article.find(params[:id])
        render json: v

    end
    def create
        puts params[:playername]
        Article.create('title': params[:title],
            'blog': params[:blog], 
            'b_image': params[:b_image]                                                        
)

    end
    

    def update
        p=Players.find(params[:id].to_i)
        puts params[:playername]
        p.update('title': params[:title],
        'blog': params[:blog], 
        'b_image': params[:b_image]    )
        render json: "data updated"
    end
    def destroy 
        p = Players.find(params[:id])
        p.destroy
        render json: "Data Deleted"
    end
end
