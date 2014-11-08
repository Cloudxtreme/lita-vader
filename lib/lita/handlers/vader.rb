module Lita
  module Handlers
    class Vader < Handler
      route(/who is (.*)'s father\?/, :father)
    end

    Lita.register_handler(Vader)
  end
end
