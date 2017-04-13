require 'pry'

  $addresses = "123 Main Street St. Louisville OH 43071,432 Main Long Road St. Louisville OH 43071,786 High Street Pollocksville NY 56432,
         54 Holy Grail Street Niagara Town ZP 32908,3200 Main Rd. Bern AE 56210,1 Gordon St. Atlanta RE 13000,
         10 Pussy Cat Rd. Chicago EX 34342,10 Gordon St. Atlanta RE 13000,58 Gordon Road Atlanta RE 13000,
         22 Tokyo Av. Tedmondville SW 43098,674 Paris bd. Abbeville AA 45521,10 Surta Alley Goodtown GG 30654,
         45 Holy Grail Al. Niagara Town ZP 32908,320 Main Al. Bern AE 56210,14 Gordon Park Atlanta RE 13000,
         100 Pussy Cat Rd. Chicago EX 34342,2 Gordon St. Atlanta RE 13000,5 Gordon Road Atlanta RE 13000,
         2200 Tokyo Av. Tedmondville SW 43098,67 Paris St. Abbeville AA 45521,11 Surta Avenue Goodtown GG 30654,
         45 Holy Grail Al. Niagara Town ZP 32918,320 Main Al. Bern AE 56215,14 Gordon Park Atlanta RE 13200,
         100 Pussy Cat Rd. Chicago EX 34345,2 Gordon St. Atlanta RE 13222,5 Gordon Road Atlanta RE 13001,
         2200 Tokyo Av. Tedmondville SW 43198,67 Paris St. Abbeville AA 45522,11 Surta Avenue Goodville GG 30655,
         2222 Tokyo Av. Tedmondville SW 43198,670 Paris St. Abbeville AA 45522,114 Surta Avenue Goodville GG 30655,
         2 Holy Grail Street Niagara Town ZP 32908,3 Main Rd. Bern AE 56210,77 Gordon St. Atlanta RE 13000"


class Travel
  def address_object_parser(addresses)
    address_array = addresses.split(",")

    address_array.map! do |x|
      x.gsub("\n ", '').strip
    end

    adderess_object_hashifier(address_array)
  end

  def adderess_object_hashifier(addresses_array)
    address_hash = Hash.new

    addresses_array.each do |x|
      value = x[-5..-1].to_i
      x.slice!(-6..-1)
      address_hash[x] = value
    end

    final_output = address_hash.sort_by { |key, value| value }.to_h

    output(final_output)
  end

  def output(sorted_address_hash)
    sorted_address_hash.each do |key, value|
      p "Address: #{key} #{value}"
    end
  end
end

run = Travel.new
run.address_object_parser($addresses)







