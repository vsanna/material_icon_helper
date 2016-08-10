module MaterialIconHelper
  class Icon < Struct.new(:key, :name, :codepoint, :group, :keywords, :is_new)
    def initialize(key, name, codepoint, group, keywords, is_new)
      @key = key
      @name = name
      @codepoint = codepoint
      @name = name
      @keywords = keywords
      @is_new = is_new
    end

    def modern_browser_key
      @key
    end

    def classic_browser_key
      "&#x#{@codepoint};"
    end
  end
end
