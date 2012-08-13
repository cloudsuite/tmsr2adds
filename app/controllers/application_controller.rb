class ApplicationController < ActionController::Base
  protect_from_forgery
    before_filter :log_ram_before
    after_filter :log_ram_after
  # this function puts a string in log — but not the right one; it isn't showing the RSS figure
    # wrong function: want something that returns a single string value, not a whole block of text 
  def log_ram_before
     @memory_before = `ps -o rss= -p #{Process.pid}`.to_i
     logger.warn 'RESIDENT MEMORY USAGE BEFORE (in 1KB pages): ' + `ps -o rss= -p #{Process.pid}`
  end
  def log_ram_after
     @memory_after = `ps -o rss= -p #{Process.pid}`.to_i
     @memory_used = @memory_after - @memory_before
     @memory_used_mb = @memory_used * 1024 / 1000000
     logger.warn 'RESIDENT MEMORY USAGE AFTER (in 1KB pages): ' +  `ps -o rss= -p #{Process.pid} | tail -1`
     logger.warn 'RESIDENT MEMORY USED (in 1KB pages): ' + @memory_used.to_s + '  (in MegaBytes): ' + @memory_used_mb.to_s
  end
end
