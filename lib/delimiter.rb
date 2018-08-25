#= simple-comma-adder Integers
class Integer
  def to_sc(delimiter = ',', numbers_per_section = 3)
    to_s.gsub(/(\d)(?=\d{#{numbers_per_section}}+(\.\d*)?$)/, '\1' + delimiter)
  end
end

#= Commatose
# Commatose makes it easy to insert commas into your Fixnums, Bignums and Floats. See below for more information.
class Float
  def to_sc(delimiter = ',', numbers_per_section = 3, after_decimal = false)
    if after_decimal
      to_s.gsub(/(\d)(?=\d{#{numbers_per_section}}+(\.\d*)?$)/, '\1' + delimiter)
    else
      to_s.split('.')[0].gsub(/(\d)(?=\d{#{numbers_per_section}}+(\.\d*)?$)/, '\1' + delimiter) + '.' + to_s.split('.')[1]
    end
  end
end
