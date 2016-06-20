require 'rubygems'
require 'sinatra'
require 'json'

get '/' do
    redirect '/index.html'
end

get '/:file' do
  redirect '/#{:file}'
end

post '/' do
  values = "{\"mark\": [3,1,2], \"transfers\": [[[0,0],[1]],[[1],[1,2]],[[0],[0,2]],[[0,2],[]]]}"
  values = JSON.parse(values)
  #values = JSON.parse(request.env["rack.input"].read)
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
