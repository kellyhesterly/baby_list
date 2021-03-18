require_relative "./baby_items/version"
require_relative "./baby_items/cli"
require_relative "./baby_items/item"
require_relative "./baby_items/scraper"


require 'pry'
require 'nokogiri'
require 'open-uri'
require 'colorize'
require 'rainbow'
# require 'lolize/auto'

module BabyItems
  class Error < StandardError; end
  # Your code goes here...
end
