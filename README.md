# WflPaginate

this is only a simple paginate.

## Installation

Add this line to your application's Gemfile:

    gem 'wfl_paginate'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install wfl_paginate

## Usage

in application.rb to set the default perpage number of record
include the module to the target record class

such as:


```
WflPaginate.configure do |config|
	config.per_page = 20
end
```

```
class User < ActiveRecord::Base
	include WflPaginate::Paginate
end
```

```
User.paginate({
	per_page: 10,
	page_no: 20
})
```


## Contributing

1. Fork it ( https://github.com/[my-github-username]/wfl_paginate/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
