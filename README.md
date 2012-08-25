# UuidHelper

The idea is to provide some helper methods like:

```ruby
  ''.to_uuid
  nil.to_uuid
```

## Installation

Add this line to your application's Gemfile:

    gem 'uuid_helper'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install uuid_helper

## Usage

Strings

```console
"".to_uuid             
=> #<UUID:0xXXXXXXX UUID:00000000-0000-0000-0000-000000000000>

"\x9ANV\xD2\x990\x11\xE1\xA7h\x00\x13r\x84\xC8\xDF".to_uuid
=> #<UUID:0xXXXXXXX UUID:9a4e56d2-9930-11e1-a768-00137284c8df>
    
"3F3B4A403BF011E181F000137284C8DF".to_uuid
=> #<UUID:0xXXXXXXX UUID:3f3b4a40-3bf0-11e1-81f0-00137284c8df>
 
"3f3b4a40-3bf0-11e1-81f0-00137284c8df".to_uuid
=> #<UUID:0xXXXXXXX UUID:3f3b4a40-3bf0-11e1-81f0-00137284c8df>  
```
NilClass

```console
nil.to_uuid
=> #<UUID:0xXXXXXXX UUID:3f3b4a40-3bf0-11e1-81f0-00137284c8df>  
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
