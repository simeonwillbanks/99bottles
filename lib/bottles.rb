class Bottles
  def song
    all = ""
    99.downto(1) do |verse_num|
      if verse_num % 2 == 0
        next
      elsif verse_num == 2
        all << verse(2) + "\n"
      elsif verse_num == 1
        all << verse(1) + "\n"
        all << verse(0)
      else
        all << verses(verse_num, verse_num-1) + "\n"
      end
    end
    all
  end

  def verses(current_verse, next_verse)
    if next_verse == 0
      verse(2) + "\n" + verse(1) + "\n" +
      "No more bottles of beer on the wall, no more bottles of beer.\n" +
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    else
      verse(current_verse) + "\n" + verse(next_verse)
    end
  end

  def verse(num)
    verse_num = num
    next_verse_num = num-1
    next_bottle = next_verse_num == 1 ? "bottle" : "bottles"
    current_bottle = next_verse_num == 0 ? "bottle" : "bottles"


    if verse_num == 0
      verse_str = "No more bottles of beer on the wall, no more bottles of beer.\n"
      verse_str += "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    else
      verse_str = "#{verse_num} #{current_bottle} of beer on the wall, #{verse_num} #{current_bottle} of beer.\n"

      if next_verse_num == 0
        verse_str += "Take it down and pass it around, no more bottles of beer on the wall.\n"
      else
        verse_str += "Take one down and pass it around, #{next_verse_num} #{next_bottle} of beer on the wall.\n"
      end
    end

    verse_str
  end
end
