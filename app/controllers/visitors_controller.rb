require 'net/http'
class VisitorsController < ApplicationController
  before_action :authenticate_user!
  def index
    uri = URI('http://asterank.com/api/asterank?query={"e":{"$lt":0.1},"i":{"$lt":4},"a":{"$lt":1.5}}&limit=1')
    Net::HTTP.start(uri.host, uri.port) do |http|
      request = Net::HTTP::Get.new uri
      response = http.request request # Net::HTTPResponse object
      p response
    end
  end
end
