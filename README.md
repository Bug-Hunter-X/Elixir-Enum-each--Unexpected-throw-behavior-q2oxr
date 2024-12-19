# Elixir Enum.each Unexpected Throw Behavior

This example demonstrates a common pitfall in Elixir when using `Enum.each` with a `throw`. `Enum.each` is designed for side effects, and it doesn't provide a mechanism to gracefully exit the iteration early using exceptions.  Attempting to `throw` from within the function passed to `Enum.each` leads to an error.

The solution demonstrates how to correctly handle early termination of iteration using `Enum.reduce` or a `for` loop with explicit conditionals.