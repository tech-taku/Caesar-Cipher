def caesar_cipher(original_string, shift)
    # Alphabet to take characters from in lower and uppercase
    alpha_lower = ('a'..'z').to_a

    alpha_upper = ('A'..'Z').to_a
    
    ciphered_string = ''

    # If we receice and empty string and or a single char string
    puts "Your string is empty!" if original_string.empty?

    return original_string if original_string.length == 1

    original_string.each_char do |char|
        # check the character's index in alphabet
        if alpha_lower.include?(char)
            char_index = alpha_lower.index(char)

            new_char_index = (char_index + shift) % 26

            ciphered_string << alpha_lower[new_char_index]
            
        elsif alpha_upper.include?(char)
            char_index = alpha_upper.index(char)

            new_char_index = (char_index + shift) % 26

            ciphered_string << alpha_upper[new_char_index]
        
        else
            ciphered_string << char
        end
    end
    return ciphered_string
end

puts caesar_cipher("ashley", 5)