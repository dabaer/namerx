defmodule NamerxTest do
  use ExUnit.Case

  test "no argument generates a random name with default prefix" do
    assert Namerx.generate() =~ ~r/DESKTOP-[0-9][A-Z]{2}[0-9][A-Z]{3}[0-9]{2}/
  end

  test "string argument generates a random name with the specified prefix" do
    assert Namerx.generate("random") =~ ~r/RANDOM-[0-9][A-Z]{2}[0-9][A-Z]{3}[0-9]{2}/
  end
end
