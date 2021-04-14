defmodule Sample.Calendar do

    def day_abbreviation(day) do
        cond do
            day == :Monday -> "M"
            day == :Tuesday -> "Tu"
            day == :Wednesday -> "W"
            day == :Thursday -> "Th"
            day == :Friday -> "F"
            day == :Saturday -> "Sa"
            day == :Sunday -> "Su"
            true -> 'Invalid day'
        end
    end

    def describe_date(date) do
        case date do
            {1, _ , _} -> "Brand new month!"
            {25, 12, _} -> "Merry Christmas"
            {25, month, _} -> "Only #{12 - month} month"
            {31, 10, 1517} -> "The reformation is state"
            {31, 10, _} -> "Happy Halloween"
            {_, month, _} when month <= 12 -> "Just an average day"
            {_ , _ , _} -> "Just an average day"
            {_, _ , _ } -> "Invalith month"
        end
    end

    def send_tweet(path) do
        case File.read(path) do
            {:ok, data } -> Tweet.send(data)
            {:error, error} -> IO.puts "Could not open"
        end
    end

end