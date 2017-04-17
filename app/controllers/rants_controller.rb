class RantsController < ApplicationController
  def index
  	puts "Inside RantsController"
  	@topic = Topic.find(params[:topic])
  	puts "Topic id: #{@topic.id}"
  	@rants = Rant.where(topic_id: @topic.id)
  	@rant = Rant.new
  end
end
