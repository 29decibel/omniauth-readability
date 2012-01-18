### An omniauth strategy for [Readability](www.readability.com)
#### config/initializers/omniauth.rb
``` ruby

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :readability,'your_client_id','your_client_secret'
end

```

#### Rails3.1 Gemfile
``` ruby

gem 'omniauth'
gem 'omniauth-readability'

```
