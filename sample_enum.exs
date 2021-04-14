defmodule Sample.Enum do
    def first(list) do
        hd(list)
    end
    
    def first_match([head | _]), do: head
    def first_match([]), do: nil
end