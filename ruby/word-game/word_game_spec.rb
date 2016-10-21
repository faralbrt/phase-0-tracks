require_relative 'word_game'

describe WordGame do
  let(:game) { WordGame.new('word') }


# matching feature
  it "correctly guesses a word" do
    expect(game.match('word')).to eq 'word'
  end

  it "correctly guesses a letter" do
    expect(game.match('o')).to eq '_ o _ _ '
  end

  it "incorrectly guesses" do
    expect(game.match('z')).to eq '_ _ _ _ '
  end

describe WordGame do
  let(:game) { WordGame.new('word') }

# guess limit feature
  it "limits the amount of guesses" do
    expect(game.guess_count)
    end

end


# repeated guesses dont count
# ending message