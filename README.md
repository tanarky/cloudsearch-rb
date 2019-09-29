# cloudsearch-rb

## setup

```
rbenv install 2.6.4
bundle install
```

## add index

```
gzcat add_data_tw.json.gz | AWS_PROFILE=xxx CS_ENDPOINT=yyy-zzz-aaa bundle exec ruby add_index.rb
```
