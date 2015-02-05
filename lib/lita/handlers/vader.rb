module Lita
  module Handlers
    class Vader < Handler
      template_root File.expand_path("../../../../templates", __FILE__)

      route(/who is (.*)['’]s father\?/, :father, command: true, help: {
              "who is USER's father?" =>
              'Replies back with the suprising truth.'
            })

      def father(response)
        child = response.matches[0][0]
        response.reply(render_template("paternity", child: child))
      end
    end

    Lita.register_handler(Vader)
  end
end
