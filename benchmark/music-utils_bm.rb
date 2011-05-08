$:.push File.expand_path("../../lib", __FILE__)

require 'music-utils'
require 'music-utils/scales/scales'
require 'benchmark'

n = 100_000

Benchmark.bmbm(15) do |b|
  b.report('with strings:') do 
    n.times { MusicUtils.short('do', 'mi') }
  end
  b.report('with symbols:') do
    n.times { MusicUtils.short(:do, :mi) }
  end
  b.report('with scales:') do
    n.times { MusicUtils.short(Scales::DO, Scales::MI) }
  end
end
