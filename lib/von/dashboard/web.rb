require 'sinatra'

module Von
  module Dashboard
    class Web < Sinatra::Base

      configure :development do
        register Sinatra::Reloader # reload code when we develop

        # For easier local development (act as production):
        # set :raise_errors, false
        # set :show_exceptions, false
        # set :dump_errors, false
      end

      get '/' do
        haml :index
      end
    end
  end
end

module Von
  class << self
    def to_rickshaw counter, period
      r1 = self.count(counter).per period
      r2 = r1.map { |h|
        d = h[:timestamp]
        d += "-01" if period == :month
        d = Time.parse d
        c = h[:count]
        { x:d.to_i, y:c}
      }
      r2.to_json
    end
  end
end




