require 'benchmark'

Benchmark.bm do |r|
  r.report "計算量がO(n^2)の場合\n" do
    1.upto(999) do |i|
      1.upto(999) do |j|
        puts "#{i} + #{j} = 1000" if i + j == 1000
      end
    end
  end
end


# Benchmark.bm do |r|
#   r.report "計算量がO(n)の場合\n" do
#     1.upto(999) do |i|
#       puts "#{i} + #{1000 - 1} = 1000"
#     end
#   end
# end