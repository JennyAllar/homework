require 'data_parser.rb'

describe 'DataParser' do
  it 'give a string of data, it returns the data in a JSON format' do
    data = ["$4.99 TXT MESSAGING – 250 09/29 – 10/28 4.99",
    "$6.99 TXT MESSAGING – 250 09/29 – 10/28 6.99",
    "$6.99 TXT MESSAGING – 250 01/22 – 12/12 6.99",
    "$6.99 TXT MESSAGING – 363 01/22 – 12/12 6.99",
    "$6.99 SPAMALOT TICKET – 363 01/22 – 12/12 6.99",
    "$12.99 SPAMALOT TICKET – 222 04/19 – 01/12 12.99",
    "$0.99 KOSHER PICKLES – 001 07/30 – 08/03 12.99",
    "$4.99 TXT MESSAGING – 250 09/29 – 10/28 4.99"]

    expected = "{\"feature\":\"TXT MESSAGING – 250\",\"date range\":\"09/29 – 10/28\",\"price\":\"$4.99\"}"

    actual = DataParser.new(data).hashify

    expect(actual).to eq expected

  end
end