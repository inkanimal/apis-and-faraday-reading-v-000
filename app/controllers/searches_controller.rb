class SearchesController < ApplicationController
  def search
  end

  def foursquare
       Faraday.get 'https://api.foursquare.com/v2/venues/search' do |req|
      req.params['client_id'] = 
      req.params['client_secret'] = GEC51G4VMG0J4LNNHXEZJ1SBOT0LP03P12T5NZCKM5QZKLCL
      req.params['v'] = '20160201'
      req.params['near'] = params[:zipcode]
      req.params['query'] = 'coffee shop'
    end
    render 'search'
  end
end
