require 'aws-sdk'
require 'json'


data= []
ARGF.each do |line|
  d = JSON.parse(line)
  x = {
    type: 'add',
    id: "twitter.com/#{d['twitter_id']}",
    fields: {
      sns: 'twitter',
      account: d['twitter_id'],
      name: d['name'],
      tags: d['tags'],
      description: d['description'],
      follower: d['follower'].to_i,
    }
  }
  data.push(x)
end
puts JSON.dump(data)
