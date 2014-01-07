path = File.expand_path "../", __FILE__
require "#{path}/lib/ypool/version"

Gem::Specification.new do |s|
  s.platform = Gem::Platform::RUBY
  s.name = 'ypool'
  s.version = Ypool::VERSION
  s.summary = 'ypool.net API ruby wrapper'
  s.description = 'With this gem you can call ypool.net API methods directly in Ruby'

  s.author = "Francesco 'makevoid' Canessa"
  s.email = 'makevoid@gmail.com'
  s.homepage = 'http://makevoid.com'

  s.files = Dir['README.md', 'lib/**/*']
  s.require_path = 'lib'
end
