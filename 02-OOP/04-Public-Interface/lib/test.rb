

def iban(x)
  shorted_iban =""
  # TODO: Hide the middle of the IBAN like FR14**************606 and return it
  (0..(x.length-1)).each do |index|
    if (index.between?(0, 4) || index.between?(x.length-4, x.length-1))
      shorted_iban << x[index]
    else
      shorted_iban << "*"
    end
  end
  shorted_iban
end

p iban("FR14-2004-1010-0505-0001-3M02-606")

