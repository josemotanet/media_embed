module MediaEmbed
  class Video
    def self.youtube_template(code, options = {})
      return iframe("//www.youtube.com/embed/#{code}/enablejsapi=1", options)
    end

    def self.vimeo_template(code, options = {})
      return iframe("//player.vimeo.com/video/#{code}", options)
    end

    private

    def self.iframe(source, options = {})
      "<iframe src='#{source}' #{options.map { |key, value| "#{key}='#{value}'" }.join(' ')}></iframe>"
    end
  end
end

