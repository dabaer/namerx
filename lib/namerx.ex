defmodule Namerx do
  @moduledoc """
  Documentation for Namerx.
  """

  @doc """
  Generates a random hostname for
  computers.

  ## Examples

      iex> Namerx.generate("DESKTOP")
      "DESKTOP-1AB2CDE34"

  """
  @spec generate(binary | nil) :: no_return
  def generate(prefix \\ nil) do
    return = if prefix === nil do
      "DESKTOP-" <> random()
    else
      String.upcase(prefix) <> "-" <> random()
    end

    return
  end

  defp random do
    nums = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "0"]
    lets = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J",
      "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V",
      "W", "Y", "X", "Z"]

    Enum.random(nums)
      <> Enum.random(lets)
      <> Enum.random(lets)
      <> Enum.random(nums)
      <> Enum.random(lets)
      <> Enum.random(lets)
      <> Enum.random(lets)
      <> Enum.random(nums)
      <> Enum.random(nums)
  end
end
