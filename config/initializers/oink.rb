# Instruct oink memory logger to write to the application's standard log rather than to
# a special oink-specific log.  The latter might not be allowed in heroku's read-only filesystem.
# Writing to the standard log also allows to work with Request Log Analyzer (github.com/wvanbergen/request-log-analyzer), 
# which currently parses rails logs)

# Tmsr2::Application.middleware.use( Tmsr2::Middleware, :logger => Rails.logger )