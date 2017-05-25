require_relative 'multilinguist'

class MathGenius < Multilinguist

  def report_total(some_nums)
    total = some_nums.sum
    puts say_in_local_language("The total is #{total}")
  end
end

me = MathGenius.new

puts me.report_total([22, 45 , 676, 34, 5778, 4, 23, 5465])

me.travel_to("India")
puts me.report_total([6, 3, 6, 68, 455, 4, 467, 57, 4, 534])

me.travel_to("Italy")
puts me.report_total([324, 245, 6, 343647, 686545])
