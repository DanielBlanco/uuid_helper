require "uuid_helper/version"
require 'uuidtools'

module UuidHelper

  #
  # Open Nil class
  #
  NilClass.class_eval do
    #
    # Converts a Nil to an UUID object. View examples below to know how it works.
    #
    #    nil.to_uuid 
    #    => #<UUID:0xXXXXXXX UUID:00000000-0000-0000-0000-000000000000>
    def to_uuid
      UUIDTools::UUID.parse_hexdigest('')
    end
  end

  String.class_eval do
    # 
    # Converts a String to an UUID object. View examples below to know how it works.
    #    
    #    "".to_uuid             
    #    => #<UUID:0xXXXXXXX UUID:00000000-0000-0000-0000-000000000000>
    #
    #    "\x9ANV\xD2\x990\x11\xE1\xA7h\x00\x13r\x84\xC8\xDF".to_uuid
    #    => #<UUID:0xXXXXXXX UUID:9a4e56d2-9930-11e1-a768-00137284c8df>
    #    
    #    "3F3B4A403BF011E181F000137284C8DF".to_uuid
    #    => #<UUID:0x5133d14 UUID:3f3b4a40-3bf0-11e1-81f0-00137284c8df>
    # 
    #    "3f3b4a40-3bf0-11e1-81f0-00137284c8df".to_uuid
    #    => #<UUID:0x5133d14 UUID:3f3b4a40-3bf0-11e1-81f0-00137284c8df>   
    #
    def to_uuid
      if self.bytesize == 16
        UUIDTools::UUID.parse_raw(self)
      elsif self.bytesize == 36
        UUIDTools::UUID.parse(self)
      else
        UUIDTools::UUID.parse_hexdigest(self)
      end
    end
  end

  UUIDTools::UUID.class_eval do
    #
    # Returns this object as it is. Basically allows you to use to_uuid in an 
    # UUID object.
    #
    # It is easier for a method to just use param.to_uuid without 
    # wondering if the param is_a? String, Nil or UUIDTools::UUID class.
    #
    def to_uuid
      self
    end
  end 

  Array.class_eval do
    #
    # Converts every item on the array to an UUIDTools::UUID object.
    # Any value that does not respond to :to_uuid method will be 
    # returned as nil.to_uuid
    #
    def to_uuid
      self.map do |v|
        if v.respond_to? :to_uuid
          v.to_uuid
        else
          nil.to_uuid
        end
      end
    end
  end

end
