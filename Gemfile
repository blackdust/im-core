source 'https://gems.ruby-china.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.0.1'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]



### 这些是从 rails 5 标准引用里去掉的 gem


### 测试
group :development, :test do
  gem 'rspec-rails', '~> 3.5'
  gem 'factory_girl_rails'
  gem 'database_cleaner', '~> 1.5.3'
end


### 以下是自己添加的 gem

# 用户验证
gem 'devise', '~> 4.2.0'

# https://github.com/reactjs/react-rails
# 引入 reactjs
group :development, :production do
  gem 'react-rails', '~> 1.8.2'
end

# 修正 assets 的冗余 digest 问题
gem 'non-stupid-digest-assets'

# haml 模板语法支持
gem 'haml'

# https://github.com/browserify-rails/browserify-rails
# https://github.com/mindpin/knowledge-camp/issues/170
gem 'browserify-rails'

# 图标字体
gem 'font-awesome-sass'

# 读取 application.yml 配置
gem "figaro", "~> 1.1.1"

gem 'mongoid', "~> 6.0.0"
gem 'mongoid-tree', "~> 2.1.0", :require => 'mongoid/tree'


### 以下是部署相关
gem "rest-client", "2.0.0"

group :development do
  gem "mina", "0.3.7"
  gem 'mina_util',
    github: "mindpin/mina_util",
    ref: "25f36fd"
  gem 'mina-sidekiq', '~> 0.4.1'
end

group :production do
  gem 'redis-namespace', '~> 1.5'
  gem 'sidekiq', '~> 4.2'
  gem 'unicorn', '~> 5.1'
end
