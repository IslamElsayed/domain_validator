module Emails
  class ValidateService
    include HTTParty
    base_uri 'https://apilayer.net/api'
    ACCESS_KEY = 'fcefb89db628347a46de2f9fcb200abc'
    attr_reader :email

    def initialize(email)
      @email = email
    end

    def execute
      JSON.parse(query_response_body)['smtp_check']
    end

    private
      def query_response_body
        self.class.get('/check', query: { access_key: ACCESS_KEY, email: email }).body
      end
  end
end
