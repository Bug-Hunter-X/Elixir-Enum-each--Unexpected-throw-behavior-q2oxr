```elixir
list = [1, 2, 3, 4, 5]

# Solution 1: Using Enum.reduce
result = Enum.reduce(list, {:ok, []}, fn
  x, {:ok, acc} ->
    if x == 3 do
      {:stop, acc}
    else
      {:ok, [x | acc]}
    end
  end)

IO.puts(elem(result, 1))

# Solution 2: Using a for loop with an explicit condition
result = for x <- list, x != 3, into: [] do
  x
end

IO.puts(result)

# Solution 3: Using Enum.take_while
result = Enum.take_while(list, fn x -> x != 3 end)
IO.puts(result)
```