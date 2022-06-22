class ArticlesController < ApplicationController
  # Articles / Basic CRUD

  def index
  	@articles = Article.all
  end


  def show
    @article = Article.find(params[:id])
  end


  def new
  	# nothing yet, use standard Rails feature
  end

  def create
  	
	@article = Article.new(article_params)
 
 	#if valid
 	if @article.save
   		redirect_to @article
  	else
    	render 'new'
  	end
  end

	private
		def article_params
			params.require(:article).permit(:title, :text)
		end

end
