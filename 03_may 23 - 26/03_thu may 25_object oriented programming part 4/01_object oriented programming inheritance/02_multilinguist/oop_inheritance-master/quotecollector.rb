require_relative 'multilinguist'

class QuoteCollector < Multilinguist

  @@quotes = []

  def learn_quote(quote)
    @@quotes << quote
  end

  def share
    poor_translation = @@quotes.sample
    random = self.say_in_local_language(poor_translation)
    "#{random}"
  end

end
