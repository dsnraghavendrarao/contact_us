New rails 6 application with webpacker / mysql database

Step1:- 

   Created new rails application with this command  **rails new Contact --webpack -d mysql**
   
Step2:-

   Now install webpacker **rails  webpacker:install**
   
Step3:- 

   Based on contact us form i have created table with attributes
   
   **rails g scaffold ContactForm first_name:string last_name:string email:string phone:string message:text**
   
Step4:-

   **rake db:migrate**
   
 Step5:-
 
   With the help of scaffolding, by default we will get **resources, controllers, view, model's**
 
 Step6:- 
   Install nvm and yarn 
   Next i have installed required javascript lib with yarn **yarn add bootstrap jquery popper.js**
 
 Step7:-
   Integrating UI with rails(Contact.zip content)
   
   We know that rails 6 by default webpacker, so we can see javascript folder.
   
   import all assets pack/application.js file 
   
   example:- 
    CSS
    
    **import 'css/main'
      import 'css/util'**
    
    Javascript
    
    **import('js/main')**
    
    Images
    
    **const images = require.context('../images', true)
      const imagePath = (name) => images(name, true)**
  
  Step8:-
  
    next replaced default css / images urls with webpack compailed path's
  
  Step9:-
  
    Next adding **internationalization** to application
    
    I have followed railscast http://railscasts.com/episodes/138-i18n-revised
  
  Step10:-
  
    Testing **Rspec / FactoryBot**
    Gem's
    group :development, :test do
      gem 'rspec-rails', '~> 4.0'
    end
    group  :test do
      gem 'shoulda-matchers'
      gem 'factory_bot_rails', '~> 5.2'
    end
   
   Step11:- 
   
     Configuring Rspec 
     **rails generate rspec:install**
     to use of factory_bot should configure
     **RSpec.configure do |config|
	     config.include FactoryBot::Syntax::Methods
     end**
   
   Step12:-
   
     Mailer
     development configuration in **development.rb**
      configuring actionmailer
      config.action_mailer.perform_deliveries = true
      config.action_mailer.raise_delivery_errors = true
      config.action_mailer.perform_caching = false
      config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }
      config.action_mailer.delivery_method = :smtp
      config.action_mailer.smtp_settings = {
        address: "smtp.gmail.com",
        port: 587,
        authentication: "plain",
        user_name: "testemail@gmail.com",
        password: "12345678", 
        domain: "smtp.gmail.com",
        openssl_verify_mode: "none",
      }
      **note:-** Because of timeissue I have provied secure value directly, but different approaches available to secure, sensitive data  
