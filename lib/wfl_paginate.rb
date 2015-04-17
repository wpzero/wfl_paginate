require "wfl_paginate/version"


module WflPaginate
  # Your code goes here...
	class << self
		attr_accessor :config
		def configure
			@config = WflPaginateConfig.instance
			yield(@config) if block_given?
		end
	end

	class WflPaginateConfig
		attr_accessor :per_page
		include Singleton
	end
	
end

require "wfl_paginate/paginate"