class Bottles
  def song
    verses(99, 0)
  end

  def verses(from, to)
    from.downto(to).map do |number|
      verse(number)
    end.join("\n")
  end

  def verse(number)
    if number == 0
      <<~VERSE
        No more bottles of beer on the wall, no more bottles of beer.
        Go to the store and buy some more, 99 bottles of beer on the wall.
      VERSE
    else
      <<~VERSE
        #{quantity(number)} of beer on the wall, #{quantity(number)} of beer.
        Take #{subject(number)} down and pass it around, #{quantity(number-1)} of beer on the wall.
      VERSE
    end
  end

  def subject(number)
    if number == 1
      'it'
    else
      'one'
    end
  end

  def quantity(number)
    if number == 0
      "no more #{container(number)}"
    else
      "#{number} #{container(number)}"
    end
  end

  def container(number)
    if number == 1
      'bottle'
    else
      'bottles'
    end
  end
end
