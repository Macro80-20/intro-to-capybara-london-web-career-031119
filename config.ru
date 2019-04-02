# Write your code here!

#!  require our config.ru requries the sinatra gem 
require 'sinatra'
 #! it then requires the file app.rb that defines our main application controllers.
require_relative './app'
 #! Finally we run the our appliation controller to start our web application 
run Application