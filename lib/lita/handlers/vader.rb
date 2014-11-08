module Lita
  module Handlers
    class Vader < Handler
      route(/who is (.*)'s father\?/, :father)

      def father(response)
        child = response.matches[0][0]
        response.reply("@#{child}, I am your father!")
      end
    end

    Lita.register_handler(Vader)
  end
end
