# encoding: utf-8

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  
  
  
  def readfile
    features=[]
    feature=''
    data_range=''
    price=''
    
    File.open("./public/test.txt", "r").each_line do |line|
    feature = line.scan(/([a-zA-z ]+ \– [0-9]+)/).to_s.strip()
    date_range= line.scan(/([0-9\/]+ \– [0-9]+\/[0-9]+)/).to_s
    price =  line.scan(/( [0-9]+\.[0-9]+)/).to_s.strip()
    this_feature={
      "feature" => feature,
      "date_range" => date_range,
      "price" => price
      
    }
    features << this_feature
    
  
  end

  return features
  end
end
