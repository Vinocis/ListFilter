defmodule ListFilter1 do

  def odd_count(list), do: odd_count(list, 0)

  defp odd_count([], acc), do: acc

  defp odd_count([head | tail], acc) do
    case is_odd?(head) do
      true -> odd_count(tail, acc + 1)
      false -> odd_count(tail, acc)
    end
  end

  defp is_odd?(value) do
    case Integer.parse(value) do
      {int, _} -> rem(int, 2) != 1
      :error -> false
    end
  end
end
