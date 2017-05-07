class TopicsController < ApplicationController
  
  def index
    puts "Inside indexController"
    @topic = Topic.all
  end
  
  def new
  	puts "New"
  end
  
  def create
  	puts "New Topic"
  	puts topic_params
  	@topic = Topic.create(topic_params)

    if @topic.save
      puts "Topic saved"
      redirect_to :controller => "rants", :action => "index", :topic => @topic
    else
      # This line overrides the default rendering behavior, which
      # would have been to render the "create" view.
      render "topics#index"
    end
  end

  def show
  	puts "#{@topic.name}"
  	render "rants/index"
  end

  def destroy
    puts "delete clicked"
    # r = Topic.delete(params[:id])
    @topic = Topic.find(params[:id])
    r_val = @topic.destroy
    puts r_val
    redirect_to :controller => "topics", :action => "index"
  end

  private
  def topic_params
    params.require(:topic).permit(:name)
  end

end
