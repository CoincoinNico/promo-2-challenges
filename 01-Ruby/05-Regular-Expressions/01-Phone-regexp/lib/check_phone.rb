def french_phone_number?(phone_number)
  # TODO: true or false?
  if phone_number.match(/(0|\+?33)\s?\d{1}((\s|-)?\d{2}){4}/)
    true
  else
    false
  end

end
