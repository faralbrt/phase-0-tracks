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

# guess limit feature
  it "limits the amount of guesses" do
    game.guess_count = 9
    expect(game.limit_reached).to eq true
    end

# repeated guesses dont count
  it "makes sure repeated guesses don't count" do
    game.guesses = ['five']
    expect(game.increment_count?('five')).to eq false
    end

# ending message
  it "prints the correct ending message" do
    game.win = false
    expect(game.ending_message).to eq 'You have reached the limit of guesses, you lost :( :('
    end

# handles instances where a word has two of the same letters
  it "handles more than one of the same letter in a word" do
    game1 = WordGame.new('carrot')
    expect(game1.match('r')).to eq '_ _ r r _ _ '
  end
end
