require "spec_helper"

describe Lita::Handlers::Vader, lita_handler: true do

  it 'routes questions about fathers' do
    expect(subject).to route_command("who is Luke's father?").to(:father)
  end

  describe :father do
    it "explains who a user's father is" do
      send_command("who is Luke's father?")
      expect(replies.last).to eq("@Luke, I am your father!")
    end
  end
end
