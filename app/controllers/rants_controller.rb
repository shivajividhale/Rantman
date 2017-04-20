class RantsController < ApplicationController
  @@topic = nil
  def index
  	puts "Inside RantsController"
  	@@topic = Topic.find(params[:topic])
  	puts "Topic id: #{@@topic.id}"
  	@rants = Rant.where(topic_id: @@topic.id)
  	@rant = Rant.new
  end

  def new
  	
  end

  def create
  	puts "Inside create for Rant"
  	puts params['rant']['value']
  	@rant = Rant.create({:value => params['rant']['value'], :topic_id => @@topic.id})
  	if @rant.save
      puts "Rant saved"
      redirect_to :controller => "rants", :action => "index", :topic => @@topic
      
    else
      # This line overrides the default rendering behavior, which
      # would have been to render the "create" view.
      render "rants#index"
    end
  end

 
end
