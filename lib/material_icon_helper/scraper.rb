require 'net/http'
require 'uri'
require 'json'

module MaterialIconHelper
  class Scraper
    MDL_BASE = 'https://design.google.com'.freeze
    MDL_API_SUFFIX = '/icons/data'.freeze
    MDL_API_FOR_ALL_ICONS_INFO_SUFFIX = '/grid.json'.freeze

    def initialize
      @agent = create_agent
    end

    def create_agent
      url = URI.parse MDL_API_BASE
      agent = Net::HTTP.new url.host, url.port
      agent
    end

    def all_icons_info_json
      res = @agent.get all_icons_info_path
      json_row = res.read_body
      json = JSON.parse json_row
      byebug
      json
    end

    def all_icons_info_path
      "#{MDL_API_SUFFIX}#{MDL_API_FOR_ALL_ICONS_INFO_SUFFIX}"
    end

    def mapping_from_json_to_icon_table
      # json全てからicon_tableに変換
    end

    def json_to_mdl_icon
      # jsonのrowからIconクラスに変換 
    end
  end
end
