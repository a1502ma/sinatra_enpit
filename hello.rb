require 'sinatra'
require 'date'

get '/' do
  "Hello World!<br>" +
  "<a href='/today'>today</a><br>" +
  "<a href='/now'>now</a>" +
  "<a href='/datetime'>datetime</a>"
end

get '/today' do
  Date.today.strftime("%F") + "<br>" +
  "<a href='/'>TOP</a>"
end

get '/now' do
  Time.now.strftime("%T") + "<br>" +
  "<a href='/'>TOP</a>"
end

get '/datetime' do
  Time.now.strftime("%F %T") + "<br>" +
  "<a href='/'>TOP</a>"
end
