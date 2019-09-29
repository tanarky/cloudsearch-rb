require 'aws-sdk'
require 'json'

# search-sns-account-search-aqobed4eiiynmd6zmwxsruawae
endpoint = ENV['CS_ENDPOINT']

# json読み込み
data = JSON.parse(STDIN.read)

# aws cloudsearch domain client
client = Aws::CloudSearchDomain::Client.new(endpoint: "https://#{endpoint}.ap-northeast-1.cloudsearch.amazonaws.com")

# upload data and add document to index
client.upload_documents(documents: JSON.dump(data), content_type: 'application/json')
