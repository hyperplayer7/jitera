require 'benchmark'

# Can you think of other, non-algorithmic ways of speeding up this function?
# better hardware?

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


# ruby exam5.rb

# Rehearsal ----------------------------------------------------
# encode(abc)        0.000022   0.000004   0.000026 (  0.000015)
# encode(assassin)   0.000000   0.000456   0.000456 (  0.000450)
# encode()           0.000000   0.000011   0.000011 (  0.000008)
# ------------------------------------------- total: 0.000493sec

#                        user     system      total        real
# encode(abc)        0.000000   0.000033   0.000033 (  0.000021)
# encode(assassin)   0.000026   0.000007   0.000033 (  0.000022)
# encode()           0.000016   0.000004   0.000020 (  0.000010)


# Rehearsal -----------------------------------------------------------
# encode_struct(abc)        0.000061   0.000016   0.000077 (  0.000075)
# encode_struct(assassin)   0.000043   0.000011   0.000054 (  0.000051)
# encode_struct()           0.000027   0.000007   0.000034 (  0.000032)
# -------------------------------------------------- total: 0.000165sec

#                               user     system      total        real
# encode_struct(abc)        0.000071   0.000018   0.000089 (  0.000076)
# encode_struct(assassin)   0.000108   0.000000   0.000108 (  0.000097)
# encode_struct()           0.000077   0.000000   0.000077 (  0.000067)