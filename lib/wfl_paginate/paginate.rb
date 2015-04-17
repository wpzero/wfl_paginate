require 'active_support/concern'

module WflPaginate
	module Paginate
		extend ActiveSupport::Concern

		included do
			scope :paginate, ->(page_infos){
				if page_infos[:page_no]
					per_page = page_infos[:per_page].to_i
					per_page ||= WflPaginate.config.per_page
					offset((page_infos[:page_no].to_i-1)*per_page).limit(per_page)
				else
					scoped
				end
			}
		end
	end
end