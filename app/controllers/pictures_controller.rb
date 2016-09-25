class PicturesController < ApplicationController

	def index
end

  def create
    @article = Article.find(params[:article_id])
    @picture = @article.pictures.create(picture_params)
    redirect_to article_path(@article)
  end

def destroy
  @article = Article.find(params[:article_id])
  @picture = @article.pictures.find(params[:id])
  @picture.destroy
  redirect_to article_path(@article)
end
 
  private
    def picture_params
      params.require(:picture).permit(:title, :url)
    end
end
