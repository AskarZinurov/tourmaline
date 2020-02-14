require "json"

module Tourmaline
  class File
    include JSON::Serializable

    getter file_id : String

    getter file_unique_id : String

    getter file_size : Int64?

    getter file_path : String?
  end
end
