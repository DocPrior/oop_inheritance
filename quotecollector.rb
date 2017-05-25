require_relative 'multilinguist'

class Collector < Multilinguist

  def initialize
    @quotes = []
  end

  def translate(quote)
    new_quote = say_in_local_language(quote)
    @quotes << new_quote
    @quotes
  end
end

me = Collector.new


me.travel_to("Japan")
p me.translate("hello")
p me.translate("goodbye")

me.travel_to("India")
p me.translate("hello")
p me.translate("goodbye")

me.travel_to("France")
p me.translate("hello")
p me.translate("goodbye")
