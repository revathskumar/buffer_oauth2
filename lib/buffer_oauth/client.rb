module BufferOAuth
  class Client < OAuth2::Client
    def initialize(client_id, client_secret, opts={})
      options = {
        :authorize_url    => '/oauth2/authorize',
        :site => "https://bufferapp.com/",
        :token_url => "https://api.bufferapp.com/1/oauth2/token.json"
      }.merge(opts)

      super(client_id, client_secret, options)
    end
  end
end
