def caesar_cipher(string, shift) 
    encrypted_string = ""
    string.chars do |char|
        if /[a-zA-Z]/.match(char) then
            if char == char.downcase then 
                encrypted_string += ((char.ord + shift - 97) % 26 + 97).chr 
            else 
                encrypted_string += ((char.ord + shift - 65) % 26 + 65).chr 
            end
        else
            encrypted_string += char
        end
    end
    p encrypted_string
end

caesar_cipher("What a string!", 5)
