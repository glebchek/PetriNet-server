require 'rubygems'
require 'sinatra'
require 'json'

get '/' do
    redirect '/index.html'
end

post '/' do
  values = JSON.parse(request.env["rack.input"].read)
  transfers = "["
  values["transfers"].each do |x|
    text = "#{x}"
    text[0] = "("
    text[-1] = ")"
    transfers += "#{text},"
  end
  transfers[-1] = "]"
  return IO.popen("./cli/main --from-args \"#{values["mark"]}\" \"#{transfers}\"")
end
