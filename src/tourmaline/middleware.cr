module Tourmaline
  # Tourmaline's middleware acts very much like any other
  # server middleware. All updates that get sent to your
  # bot get passed through any registered middleware.
  # Using middleware you can filter or modify data
  # before it makes it to your handlers.
  #
  # Example:
  # ```
  # # bot definition...
  #
  # class MyMiddleware < Tourmaline::Middleware
  #   def call(client, update)
  #     if message = update.message
  #       if user = message.from_user
  #         if text = message.text
  #           puts "#{user.first_name}: #{text}"
  #         end
  #       end
  #     end
  #   end
  # end
  #
  # # Register the middleware with your bot
  # bot.use(MyMiddleware.new)
  # ```
  abstract class Middleware
    def init(client : Tourmaline::Client)
      # Do nothing
    end

    def call(client : Tourmaline::Client, update : Tourmaline::Update)
      # Do nothing
    end
  end
end
