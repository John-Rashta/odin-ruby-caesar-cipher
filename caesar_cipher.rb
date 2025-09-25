def caesar_cipher(string, key)
  # .between?(97, 122) .between?(65, 90)
  # maybe store both in a variable, is_upper is_lower, than change accordingly
  ciphered_codes = string.codepoints.map do |number|
    is_upper = number.between?(65, 90)
    is_lower = number.between?(97, 122)

    if is_lower || is_upper
      string_case = is_lower ? { max_code: 122, min_code: 97 } : { max_code: 90, min_code: 65 }
      ciphered_value = (((number - string_case[:min_code]) + key) % 26) + string_case[:min_code]
      if ciphered_value > string_case[:max_code]
        string_case[:min_code] + ((ciphered_value - string_case[:max_code]) - 1)
      else
        ciphered_value
      end
    else
      number
    end
  end

  ciphered_codes.map { |code| code.chr }.join
end
