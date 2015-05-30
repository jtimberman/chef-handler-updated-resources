# chef-handler-updated-resources

Chef report handler to display resources updated in the Chef Run.

# Installation

This report handler should be installed into the Ruby environment used by Chef. This can be done with `/opt/chef/embedded/bin/gem` or `c:\opscode\embedded\bin\gem`. Or, it can be installed using the `chef_gem` resource.

# Usage

Configure `/etc/chef/client.rb` or other config file:

```ruby
require 'chef/handler/updated_resources'
report_handlers << SimpleReport::UpdatedResources.new
```

Optionally, pass an argument specifying a prefix for updated resource messages. The default is `'  '` (two spaces). This may make it easier to grep for updated resources, depending on your tooling.

```ruby
require 'chef/handler/updated_resources'
report_handlers << SimpleReport::UpdatedResources.new('GREPME')
```

Or, use the [chef_handler cookbook](https://supermarket.chef.io/cookbooks/chef_handler).

```ruby
chef_gem 'chef-handler-updated-resources' do
  compile_time true
end

chef_handler 'SimpleReport::UpdatedResources' do
  source 'chef/handler/updated_resources'
  action :enable
end
```

# License and Author

- Author: Joshua Timberman
- Copyright 2011-2015, Joshua Timberman <opensource@housepub.org>

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
