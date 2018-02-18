require "serrano/version"
require "serrano/cnrequest"

##
# ContentNegotiation - Content Negotiation class
#
# @see http://www.crosscite.org/cn/ for details
module Serrano

  class ContentNegotiation

    attr_accessor :ids
    attr_accessor :format
    attr_accessor :style
    attr_accessor :locale

    def initialize(ids, format = "bibtex", style = "apa", locale = "en-US")
      self.ids = ids
      self.format = format
      self.style = style
      self.locale = locale
    end

    def cn
      CNRequest.new(self.ids, self.format, self.style, self.locale).perform
    end

  end

end
