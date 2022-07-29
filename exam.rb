# exam.rb
require "get_process_mem"

def print_usage(description)
    mb = GetProcessMem.new.mb
    puts "#{ description } - MEMORY USAGE(MB): #{ mb.round }"
end

print_usage(0)

array_exam = ["B$u$i$ld", "$t$$h$e", "N$e$x$t", "E$$ra", "$$o$f$", "S$$of$t$wa$r$e", "De$$ve$l$op$me$n$t"]
array_exam.join(" ").gsub("$","").upcase
print_usage(1)

array_exam = ["B$u$i$ld", "$t$$h$e", "N$e$x$t", "E$$ra", "$$o$f$", "S$$of$t$wa$r$e", "De$$ve$l$op$me$n$t"]
array_exam.map { |i| i.to_s }.join(" ").gsub("$","").upcase
print_usage(2)

array_exam = ["B$u$i$ld", "$t$$h$e", "N$e$x$t", "E$$ra", "$$o$f$", "S$$of$t$wa$r$e", "De$$ve$l$op$me$n$t"]
(array_exam*" ").gsub("$","").upcase
print_usage(3)