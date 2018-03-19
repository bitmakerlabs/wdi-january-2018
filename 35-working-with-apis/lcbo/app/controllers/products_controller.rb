require 'json'
class ProductsController < ApplicationController
  def index
    response = HTTParty.get("https://lcboapi.com/products?access_key=#{ENV['LCBO_KEY']}")
    # @results = JSON.parse(response.body)["result"]

    parsed_json = JSON.parse(response.body)
    @results = parsed_json["result"]

    respond_to do |format|
      format.html {
        render :index
      }
      format.json {
        render json: { results: @results }
      }
    end
  end
end
