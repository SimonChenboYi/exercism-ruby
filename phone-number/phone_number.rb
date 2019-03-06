class PhoneNumber
  def self.clean(inputstr)
    matchstr = inputstr.match(/\+?1?\s?\(?[2-9]\d\d\)?[\s\-\.]*[2-9]\d\d[\s\-\.]*\d{4}\s*/)
    return nil if matchstr.nil? || matchstr[0] != inputstr

    matchstr = matchstr[0]
    numberarr = matchstr.scan(/\d/)

    return nil if (numberarr[0] == '1' && numberarr.length != 11) || (numberarr[0] != '1' && numberarr.length != 10)

    if numberarr.length == 11
      numberarr.shift
      numberarr.join('')
    else
      numberarr.join('')
    end
  end
end
