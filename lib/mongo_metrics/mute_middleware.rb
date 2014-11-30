module MongoMetrics
	class MuteMiddleware
		def initialize(app)
			@app = app			
		end

		def call(env)
			MongoMetrics.mute! { @pp.call(env) }			
		end
	end
	
end