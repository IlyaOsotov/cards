defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "create deck makes 30 cards" do
    assert length(Cards.create_deck) == 24
  end

  test "shuffling a deck randomizes it" do
    deck = Cards.create_deck()
    refute deck == Cards.shuffle(deck)
  end

  test "deal makes 2 lists of cards with right lengths" do
    deck = Cards.create_deck()
    hand_size = 5
    {hand, other_deck} = Cards.deal(deck, hand_size)
    assert length(hand) == hand_size
    assert length(other_deck) == length(deck) - hand_size
  end
end
