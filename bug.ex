```elixir
list = [1, 2, 3, 4, 5]

Enum.each(list, fn x ->
  if x == 3 do
    # This will cause an error because Enum.each doesn't support returning from the loop
    throw(:stop)
  end
  IO.puts(x)
end)
```