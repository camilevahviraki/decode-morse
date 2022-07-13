# frozen_string_literal: true

require_relative "morse/version"

module Decode
  module Morse
    class Error < StandardError; end
    # Your code goes here...
      def decode_char(str)
        case str
        when ".-"
          "A"
        when "-..."
          "B"
        when "-.-."
          "C"  
        when "-.."
          "D"
        when "."
          "E"  
        when "..-."
          "F"  
        when "--."
          "G" 
        when "...."
          "H" 
        when ".."
          "I"  
        when ".---"
          "J"
        when "-.-"
          "K"
        when ".-.."
          "L"
        when "--"
          "M"
        when "-."
          "N" 
        when "---"
          "O" 
        when ".--."
          "P"
        when "--.-"
          "Q"
        when ".-."
          "R"
        when "..."
          "S" 
        when "-"
          "T"
        when "..-"
          "U"
        when "...-"
          "V"
        when ".--"
          "W"  
        when "-..-"
          "X"
        when "-.--"
          "Y"
        when "--.."
          "Z"
        else 
          ""
        end          
      end  
      # decode sring
      def decode_string(morse_code)
      morse_code
      .split("   ")
      .map {|char| char
      .split(" ")
      .map {|word| decode_char(word)}
      .join()
      }
      .join(" ")
      end
        
  end
end
