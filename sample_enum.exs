defmodule Sample.Enum do
    def first(list) do
        hd(list)
    end

    def first_guard(list) when length(list) == 0, do: nil

    def first_match([head | _]), do: head

    def first_match([]), do: nil

    def add(list, val \\ 0) do
    trace(val)
        [val | list]
    end


    def map([], _) ,do: []

    def map([hd | tl], f) do
        [f.(hd) | map(tl, f)]
    end

    def each([head | tail]) do
        IO.puts(head)
        each(tail)
    end

    defp trace(string) do
        IO.puts("The value passed in was #{string}")
    end
end
