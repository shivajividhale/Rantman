class TopicsController < ApplicationController
  
  def index
    puts "Inside indexController"
    @topic = Topic.all
  end
  
  def new
  end
  
  def create
  	@topic = Topic.create(topic_params)
    if @topic.save
      puts "Topic saved"
      redirect_to :controller => "rants", :action => "index", :topic => @topic
    else
     render "topics#index"
    end
  end

  def show
  	puts "#{@topic.name}"
  	render "rants/index"
  end

  def destroy
    puts "delete clicked"
    if Topic.destroy(params[:id])
      puts "Topic destroyed"
    else
      puts "Topic not destroyed"
    end
    redirect_to :controller => "topics", :action => "index"
  end

  private
  def topic_params
    params.require(:topic).permit(:name)
  end

end
