module Tourmaline
  class MenuButtonDefault
    include JSON::Serializable

    getter type : String

    def initialize(@type : String)
    end
  end
end
