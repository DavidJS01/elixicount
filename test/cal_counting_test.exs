defmodule CalculateTDEETest do
  use ExUnit.Case
  doctest CalculateTDEE

  test "converts pounds to kg" do
    assert CalculateTDEE.convert_pounds_to_kg(180) == 81.63
  end

  test "converts height to cm" do
    assert CalculateTDEE.convert_height_to_cm(5, 11) == 180.34
  end

  test "calculates bmr" do
    assert CalculateTDEE.calculate_bmr(81.63, 180.34, 21) == 1843.42
  end

  test "calculates tdee" do
    assert CalculateTDEE.calculate_tdee(180, 5, 11, 21) == 2212.1
  end
end
