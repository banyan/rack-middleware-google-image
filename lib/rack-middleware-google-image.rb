# -*- encoding: utf-8 -*-

require 'google_image_api'
require 'open-uri'

module Rack
  class GoogleImage
    def initialize(app, options = {})
      @app = app
    end

    def call(env)
      status, headers, response = @app.call(env)

      if env['PATH_INFO'] =~ (/\/(.*)\.jpg$/)
        response = search_image(response, Rack::Utils::unescape($1))
        [status, headers, response]
      end

      [status, headers, response]
    end

    private
    def search_image(response, image_name)
      results = GoogleImageApi.find(image_name, {
        imgsz:       "large",
        rsz:         8,
        start:       8,
        as_filetype: "jpg"
      })
      url = results.images.sample['url']
      [ open(url) {|f| f.read } ]
    end
  end
end
