guard :rspec, cmd: 'bundle exec rspec' do
  watch(%r{^spec/lita/handlers/.+_spec\.rb$})
  watch(%r{^lib/lita/handlers/(.+)\.rb$})     { |m| "spec/lita/handlers/#{m[1]}_spec.rb" }
  watch('spec/spec_helper.rb')  { "spec" }
end

