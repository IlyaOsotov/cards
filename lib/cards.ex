defmodule Cards do
  def create_deck do
    ["One", "Two", "Three"]
  end

  def shuffle(deck) do
    Enum.shuffle(deck)
  end
end
