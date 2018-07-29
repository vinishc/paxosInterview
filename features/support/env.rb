require 'watir'
require 'webdrivers'
require_relative 'search_helper'

module PaxosSearch
  def self.page
    @@page ||= (
      Page.new(Watir::Browser.new(ENV['BROWSER'].to_sym))
    )
  end
end

World(PaxosSearch)