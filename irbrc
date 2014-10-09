require 'awesome_print'
require 'irb/ext/save-history'
IRB.conf[:SAVE_HISTORY] = 2048
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-history"
