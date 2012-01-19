module ActionDispatch
  module Http
    module URL
      # Returns the \host for this request, such as "example.com".
      def raw_host_with_port
        if forwarded = env["HTTP_X_FORWARDED_HOST"]
          # Modified to return the first host due to the structure of our proxy server and what we would expect to return.
          forwarded.split(/,\s?/).first
        else
          env['HTTP_HOST'] || "#{env['SERVER_NAME'] || env['SERVER_ADDR']}:#{env['SERVER_PORT']}"
        end
      end
    end
  end
end