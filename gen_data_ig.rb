require 'aws-sdk'
require 'json'

data= []
ARGF.each do |line|
  d = JSON.parse(line)
  account = d['account'].gsub('http://instagram.userlocal.jp/users/', '').gsub('/', '')
  
  x = {
    type: 'add',
    id: "instagram.com/#{account}/",
    fields: {
      sns: 'instagram',
      account: account,
      name: d['name'],
      tags: [],
      description: d['description'],
      follower: d['follower'],
    }
  }
  data.push(x)
end
puts JSON.dump(data)
