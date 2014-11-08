module Lita
  module Handlers
    class Vader < Handler
      route(/who is (.*)'s father\?/, :father, command: true, help: {
        "who is USER's father?" => "Replies back with the suprising truth."
      })

      def father(response)
        child = response.matches[0][0]
        response.reply("@#{child}, I am your father!")
      end
    end

    Lita.register_handler(Vader)
  end
end
