class ArticlesController < ApplicationController
    def create
        @article = Article.new(article_params)
        
        if @article.save
            redirect_to  @article
        else
            render 'new'
        end
    end
    
    def edit 
        @article = Article.find(params[:id])
    end
    
    def update 
        @article = Article.find(params[:id])
    if @article.update(article_params)
        redirect_to @article
    else
        render 'edit'
    end
    end
end

