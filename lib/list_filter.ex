defmodule ListFilter do

  def odd_count(list) do
    odd_count(list, 0)
  end

  defp odd_count([], acc), do: acc

  defp odd_count([head | tail], acc) do
    if is_odd?(head) do
      odd_count(tail, acc + 1)
    else
      odd_count(tail, acc)
    end
  end

  defp to_int(value) do
    case Integer.parse(value) do
      {int, _} -> int
      :error -> 0
    end
  end

  defp is_odd?(value) do
    if rem(to_int(value), 2) != 0 do
      true
    end
  end
end
