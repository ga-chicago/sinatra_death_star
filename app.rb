require 'bundler'
Bundler.require()

def fake_database(id, name, description)
  {:name => name.to_s, :id => id.to_s, :description => description.to_s}.to_json
end

def planets_to_blow_up
  {:alderaan => 'blown up', :yavin_4 => 'not blow up'}.to_json
end

get '/' do
  cross_origin
  fake_database(42, 'Death Star', 'Blowing all the planets up')
end

get '/api/planets' do
  cross_origin
  planets_to_blow_up
end
