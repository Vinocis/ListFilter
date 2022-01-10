defmodule ListFilter do
  def odd_count(list) do
    Enum.reduce(list, 0, fn elem, acc ->
      case Integer.parse(elem) do
        {int, _} when rem(int, 2) == 1 -> acc + 1
        _ -> acc
      end
    end)
  end
end
