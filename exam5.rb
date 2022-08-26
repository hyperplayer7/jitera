require 'benchmark'

def encode(string)
    a = []
    string.split('').each { |c| 
        a << "(#{c}, 1)"
    }
    return a
end

def encode_struct(string)
    strucker = Struct.new(:lettering, :numbering)
    a = []
    string.split('').each { |c| 
      a << strucker.new(c, 1)
    }
    return a
end

Benchmark.bmbm  do |x|
    x.report("encode(abc)") { encode("abc") }
    x.report("encode(assassin)")  { encode("assassin")  }
    x.report("encode()")  { encode("")  }
  end

puts ""
puts ""

Benchmark.bmbm  do |x|
  x.report("encode_struct(abc)") { encode_struct("abc") }
  x.report("encode_struct(assassin)")  { encode_struct("assassin")  }
  x.report("encode_struct()")  { encode_struct("")  }
end


