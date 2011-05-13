$:.push File.expand_path("../../lib", __FILE__)

require 'music-utils'
require 'music-utils/scales/scales'
require 'benchmark'

n = 100_000
label_width = 60

# Helper method to print benchmarks titles 
def title(desc, n)
  puts '-' * 105
  puts desc + ' ' + n.to_s + ' times: '
end

# Benchmarks

title 'Classifying do-mi interval', n
Benchmark.bm(label_width) do |b|
  b.report('with strings (number):') do 
    n.times { MusicUtils.number('do', 'mi') }
  end
  b.report('with strings (quality):') do 
    n.times { MusicUtils.quality('do', 'mi') }
  end
  b.report('with strings (short notation):') do 
    n.times { MusicUtils.short('do', 'mi') }
  end
  
  b.report('with scales (number):') do
    n.times { MusicUtils.number(Scales::DO, Scales::MI) }
  end
  b.report('with scales (quality):') do
    n.times { MusicUtils.quality(Scales::DO, Scales::MI) }
  end
  b.report('with scales (short notation):') do
    n.times { MusicUtils.short(Scales::DO, Scales::MI) }
  end
end
