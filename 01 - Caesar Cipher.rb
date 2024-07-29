def caesar_cipher(sentence, factor)
  decomposed = sentence.chars
  num_values = decomposed.map {|char| char.ord}
  shifted_numbers = num_values.map do |number|
    case number 
    when 65..(90 - factor) then number + factor
    when (91 - factor)..90 then (number - 26) + factor  
    when 97..(122 - factor) then number + factor
    when (123 - factor)..122 then (number - 26) + factor
    else number
    end
  end 
  shifted_chars = shifted_numbers.map {|number| number.chr}
  shifted_chars.join
end
