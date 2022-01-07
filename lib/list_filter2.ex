defmodule ListFilter2 do
  def conta_impares(list), do: conta_impares(list, 0)

  defp conta_impares([], acc), do: acc

  defp conta_impares([head | tail], acc) do
    case impar(head) do
      true -> conta_impares(tail, acc + 1)
      false -> conta_impares(tail, acc)
    end
  end

  defp impar(value) do
    case Integer.parse(value) do
      :error -> false
      {int, _} -> rem(int, 2) == 1
    end
  end
end
