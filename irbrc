require 'irb/ext/save-history'
IRB.conf[:SAVE_HISTORY] = 99999
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-history"
