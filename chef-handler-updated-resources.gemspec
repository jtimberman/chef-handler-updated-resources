Gem::Specification.new do |s|
  s.name = 'chef-handler-updated-resources'
  s.version = '0.1'
  s.platform = Gem::Platform::RUBY
  s.summary = "Chef report handler to display resources updated in the Chef Run"
  s.description = s.summary
  s.author = "Joshua Timberman"
  s.email = "chefcode@housepub.org"
  s.homepage = "http://github.com/jtimberman/chef-handler-updated-resources"
  s.require_path = 'lib'
  s.files = %w(LICENSE README.md) + Dir.glob("lib/**/*")
end
