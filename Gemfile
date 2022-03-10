source 'https://rubygems.org'

gem 'cube-ruby', require: 'cube'
gem 'faraday', '~> 1.9'
gem 'ffi'
gem 'minitest', '~> 4.0'
gem 'oj', '~> 2.0'
gem 'rake', '~> 10.0'
gem 'redis', '~> 3.0'

group :development do
  gem 'pry'
end

group :test do
  gem 'test-unit-minitest'
end

# NCBO gems (can be from a local dev path or from rubygems/git)
gem 'goo', github: 'ncbo/goo', branch: 'develop'
gem 'ncbo_annotator', github: 'ncbo/ncbo_annotator', branch: 'remove_ncbo_resource_index'
gem 'ontologies_linked_data', github: 'ncbo/ontologies_linked_data', branch: 'remove_ncbo_resource_index'
gem 'sparql-client', github: 'ncbo/sparql-client', branch: 'develop'
