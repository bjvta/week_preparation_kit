
require 'json'
require 'stringio'
require 'uri'
require 'net/http'
require 'byebug'

def getAuthorHistory(author)
  history_arr = []
  url = 'https://jsonmock.hackerrank.com/api/article_users?username=' + author
  uri = URI(url)
  response = Net::HTTP.get(uri)
  json_response = JSON.parse(response)

  page = json_response['page']
  total_pages = json_response['total_pages']

  loop do
    json_response['data'].each do |element|
      about_text = element['about']
      history_arr.append(about_text) unless about_text.empty? or about_text.nil?
    end 

    break if page >= total_pages

    page = page.to_i + 1
    new_url = url + 'page=' + page.to_s
    uri = URI(new_url)
    response = Net::HTTP.get(uri)
    json_response = JSON.parse(response)
  end


  url = 'https://jsonmock.hackerrank.com/api/articles?author=' + author
  uri = URI(url)
  response = Net::HTTP.get(uri)
  json_response = JSON.parse(response)
  page = json_response['page']
  total_pages = json_response['total_pages']

  loop do

    json_response['data'].each do |element|
      title = element['title']
      store_title = element['store_title']
      input_text = title
      
      next if (title.nil? or title.empty?) and (store_title.nil? or store_title.empty?)
      input_text = store_title if (title.nil? or title.empty?)

      history_arr.append(input_text)
    end

    if page >= total_pages
      break
    end
  
    page = page.to_i + 1
    new_url = url + 'page=' + page.to_s
    uri = URI(new_url)
    response = Net::HTTP.get(uri)
    json_response = JSON.parse(response)
  end

  
  history_arr
end

