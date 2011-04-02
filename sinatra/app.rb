require 'rubygems'
require 'sinatra'

require 'erubis'
Tilt.register :erb, Tilt[:erubis]

get '/slow/:username' do
  @var = "Hello #{params[:username]}"
  erb :index
end

get '/fast/:username' do
  "Hello #{params[:username]}"
end

get '/subst/:username' do
  f = File.open("template.tpl")
  t = f.read
  res = t.sub("%content%","Hello #{params[:username]}");
  f.close
  res
end