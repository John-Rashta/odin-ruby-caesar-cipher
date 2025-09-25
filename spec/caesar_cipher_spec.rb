# frozen_string_literal: true

require_relative "../caesar_cipher"

describe "caesar_cipher" do
  context "shifts words with positive and negative" do
    it "works with low positive shift" do
      shifted_word = caesar_cipher("What a string!", 5)
      expect(shifted_word).to eql("Bmfy f xywnsl!")
    end

    it "works with low negative shift" do
      shifted_word = caesar_cipher("Odin", -5)
      expect(shifted_word).to eql("Jydi")
    end

    it "works with high positive shift" do
      shifted_word = caesar_cipher("Odin", 74)
      expect(shifted_word).to eql("Kzej")
    end

    it "works with high negative shift" do
      shifted_word = caesar_cipher("Odin", -55)
      expect(shifted_word).to eql("Lafk")
    end
  end

  context "shifts without touching punctuation" do
    it "works with low positive shift" do
      shifted_word = caesar_cipher("Hello, World!", 9)
      expect(shifted_word).to eql("Qnuux, Fxaum!")
    end

    it "works with low negative shift" do
      shifted_word = caesar_cipher("Hello, World!", -5)
      expect(shifted_word).to eql("Czggj, Rjmgy!")
    end
  end
end
