module MongoMetrics
  class MetricsController < ActionController::Base
  	respond_to :html, :json

  	def index
 		@metrics = Metric.all
 		respond_with(@metrics) 		
  	end

  	def destroy
  		@metric = Metric.find(params[:id])
  		@metric.destroy
  		respond_with(@metric)
  	end

  end
end
