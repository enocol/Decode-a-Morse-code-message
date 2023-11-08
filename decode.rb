def decode_char(morse_code)
  morse_code_dict = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D',
    '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H',
    '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
    '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P',
    '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
    '-.--' => 'Y', '--..' => 'Z'
  }

  morse_code_dict[morse_code] || 'Invalid Morse code character'
end

# Test case 1
morse_char = '...'
decoded_char = decode_char(morse_char)
puts decoded_char

def decode_word(word)
  translated_word = []
  letters = word.split
  letters.each { |letter| translated_word.push(decode_char(letter)) }
  translated_word.join
end

# Test case 2
word = '-- -.-- '
puts decode_word(word)

def morse_code(str)
  translated_message = []
  words = str.split('   ')
  words.each { |word| translated_message.push(decode_word(word)) }
  translated_message.join(' ')
end

# Test case 3
str = "      .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ..."
puts morse_code(str)
