defmodule CalculateTDEE do
  require Decimal

  @spec convert_pounds_to_kg(number) :: float
  def convert_pounds_to_kg(weight_in_pounds) do
    Float.round(weight_in_pounds / 2.205, 2)
  end

  @spec convert_height_to_cm(number, number) :: float
  def convert_height_to_cm(feet, inches) do
    total_inches = feet * 12 + inches

    total_inches * 2.54
  end

  @spec calculate_bmr(number, number, number) :: float
  def calculate_bmr(weight_in_kg, height_in_cm, age) do
    bmr = 10.0 * weight_in_kg + 6.25 * height_in_cm - 5 * age + 5
    
    Float.round(bmr, 2)
  end

  @spec calculate_tdee(number, number, number, number) :: float
  def calculate_tdee(weight, feet, inches, age) do
    weight_in_kg = convert_pounds_to_kg(weight)
    height_in_cm = convert_height_to_cm(feet, inches)
    bmr = calculate_bmr(weight_in_kg, height_in_cm, age)

    Float.round(bmr * 1.2, 2)
  end
end
