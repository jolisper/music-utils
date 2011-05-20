$:.push File.expand_path("../../lib", __FILE__)

require 'music-utils'
require 'music-utils/scales/scales'
require 'benchmark'

include MusicUtils::Scales

n = (ARGV[0].to_i != 0) ? ARGV[0].to_i : 50000
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
    n.times { MusicUtils.number('do', 'sol') }
  end
  b.report('with strings (quality):') do 
    n.times { MusicUtils.quality('do', 'sol') }
  end
  b.report('with strings (short notation):') do 
    n.times { MusicUtils.short('do', 'sol') }
  end
  
  b.report('with scales (number):') do
    n.times { MusicUtils.number(DO, SOL) }
  end
  b.report('with scales (quality):') do
    n.times { MusicUtils.quality(DO, SOL) }
  end
  b.report('with scales (short notation):') do
    n.times { MusicUtils.short(DO, SOL) }
  end
end

title 'Create scales', n
Benchmark.bm(label_width) do |b|
  b.report('FA major scale: ') do 
    n.times { MusicUtils.scale(:fa, MusicUtils::MAJ_SCALE) }
  end
  b.report('SIb natural minor scale: ') do 
    n.times { MusicUtils.scale(:sif, MusicUtils::NATURAL_MIN_SCALE) }
  end
end


