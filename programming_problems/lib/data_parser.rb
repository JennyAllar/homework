require 'json'
class DataParser
  def initialize(data)
    @data = data
  end

def hashify
  pr1='(\\$)' # Any Single Character 1
  pr2='(\\d+)' # Integer Number 1
  pr3='(.)' # Any Single Character 2
  pr4='(\\d+)' # Integer Number 2

  price_regex=(pr1+pr2+pr3+pr4)

  dr1='(\\d+)' # Integer Number 1
  dr2='(\\/)' # Any Single Character 1
  dr3='(\\d+)' # Integer Number 2
  dr4='( )' # Any Single Character 2
  dr5='(–)' # Any Single Character 3
  dr6='( )' # Any Single Character 4
  dr7='(\\d+)' # Integer Number 3
  dr8='(\\/)' # Any Single Character 5
  dr9='(\\d+)' # Integer Number 4

  date_regex=(dr1+dr2+dr3+dr4+dr5+dr6+dr7+dr8+dr9)

  fr1='[A-Z]+\s' # Word 1
  fr2='[A-Z]+\s' # Word 1
  fr3='(.)'; # Any Single Character 1
  fr4='(\\s+)'; # White Space 1
  fr5='(\\d+)'; # Integer Number 1


  feature_regex=(fr1+fr2+fr3+fr4+fr5)

  parse_data = nil
  @data.each do |data_line|
    feature = data_line.match feature_regex
    date_range = data_line.match date_regex
    price = data_line.match price_regex
    parse_data = {"feature" => feature[0], "date range" => date_range[0], "price" => price[0]}
  end
  p parse_data.to_json
  end
end
