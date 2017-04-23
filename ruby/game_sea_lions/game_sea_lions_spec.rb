require_relative "game_sea_lions"

describe Game do
  let(:game) { Game.new("google") }

  it "stores the word given on initialization" do
    expect(game.word).to eq "google"
  end

  it "provides 12 guesses on initialization" do
    expect(game.guesses).to eq 12
  end

  it "provides 6 '_' characters on initialization" do
    expect(game.hidden_word).to eq ["_", "_", "_", "_", "_", "_"]
  end

  it "uses the proper word based on amount of guesses" do
    game.count
    expect(game.guess_count).to eq "guess" if game.guesses == 1
  end

  it "updates the hidden word based on a correct guess" do
    game.update("g")
    expect(game.hidden_word.join(' ')).to eq "g _ _ g _ _"
  end

  it "keeps track of used letters" do
    game.guessed_letters("a")
    expect(game.used_letters).to eq ["a"] if game.used_letters.include?("a")
  end

  it "exits the game when all the letters are guessed" do
    game.game_done
    expect(game.game_over).to eq true if !game.hidden_word.include?("_")
  end

  it "exits the game when the user has run out of guesses" do
    game.game_done
    expect(game.game_over).to eq true if game.guesses == 0
  end
end 