class RateController < ApplicationController
  require 'nokogiri'
  require 'open-uri'
  def index
    url = 'http://info.finance.yahoo.co.jp/fx/detail/?code=USDJPY=FX'
    doc = Nokogiri::HTML(open(url))
    @usd = doc.xpath("//*[@id='USDJPY_detail_bid']").text
    @usdask = doc.xpath("//*[@id='USDJPY_detail_ask']").text

    uri = "https://info.finance.yahoo.co.jp/fx/detail/?code=EURJPY=FX"
    doc = Nokogiri::HTML(open(uri))
    @eur = doc.xpath("//*[@id='EURJPY_detail_bid']").text
    @eurask = doc.xpath("//*[@id='EURJPY_detail_ask']").text

    uri = "https://info.finance.yahoo.co.jp/fx/detail/?code=AUDJPY=FX"
    doc = Nokogiri::HTML(open(uri))
    @aud = doc.xpath("//*[@id='AUDJPY_detail_bid']").text
    @audask = doc.xpath("//*[@id='AUDJPY_detail_ask']").text

    uri = "https://info.finance.yahoo.co.jp/fx/detail/?code=GBPJPY=FX"
    doc = Nokogiri::HTML(open(uri))
    @gbp = doc.xpath("//*[@id='GBPJPY_detail_bid']").text
    @gbpask = doc.xpath("//*[@id='GBPJPY_detail_bid']").text

    uri = "https://info.finance.yahoo.co.jp/fx/detail/?code=CNHJPY=FX"
    doc = Nokogiri::HTML(open(uri))
    @cnh = doc.xpath("//*[@id='CNHJPY_detail_bid']").text
    @cnhask = doc.xpath("//*[@id='CNHJPY_detail_bid']").text
  end
end
