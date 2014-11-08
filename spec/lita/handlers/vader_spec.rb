require "spec_helper"

describe Lita::Handlers::Vader, lita_handler: true do

  it 'routes questions about fathers' do
    expect(subject).to route_command("who is Luke's father?").to(:father)
  end
end
