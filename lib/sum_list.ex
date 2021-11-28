defmodule SumList do
  def call_enum_sum(list), do: Enum.sum(list)
  def call_enum_max(list), do: Enum.max(list)
  def call_enum_min(list), do: Enum.min(list)

  # lambda function using map to calc double of elements in list
  def call_enum_map(list), do: Enum.map(list, fn elem -> elem * 2 end)

  # lambda function using filter to return just element biggest 100
  def call_enum_filter(list), do: Enum.filter(list, fn elem -> elem > 100 end)

  # lambda function using any to return if any of the elements satisfies the condition
  def call_enum_any(list), do: Enum.any?(list, fn elem -> elem > 100 end)

  # lambda function using any to return if any of the elements satisfies the condition
  def call_enum_all(list), do: Enum.all?(list, fn elem -> elem > 5 end)

  # recursive call
  def call(list), do: sum(list, 0)

  defp sum([], acc), do: acc

  defp sum([head | tail], acc) do
    acc = acc + head
    sum(tail, acc)
  end
end
