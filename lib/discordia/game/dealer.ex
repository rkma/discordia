defmodule Discordia.Dealer do
  @moduledoc false

  def new_deck() do
    values = Enum.map(1..9, &Integer.to_string/1) ++ ["+2", "reverse", "block"]
    colored = for value <- values, color <- colors() do
      %{value: value, color: color}
    end

    zeros = for color <- colors() do
      %{value: "0", color: color}
    end

    blacks = for value <- ["+4", "wildcard"], _color <- colors() do
      %{value: value, color: "black"}
    end

    deck = colored ++ colored ++ zeros ++ blacks

    Enum.shuffle(deck)
  end

  def colors(), do: ["red", "green", "blue", "yellow"]

  def initial_color(), do: Enum.random(colors())
end
