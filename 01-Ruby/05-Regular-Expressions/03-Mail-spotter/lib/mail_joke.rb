# Encoding: utf-8

def mail_joke(email)
  # TODO: Return a joke suited to the email provided
  name = email.match(/^(\w+|\.|_|-)+@+(\w+\.+\w{1,4})/)[1]
  provider = email.match(/^(\w+|\.|_|-)+@+(\w+\.+\w{1,4})/)[2]

    raise ArgumentError unless email.match(/^(\w+|\.|_|-)+@+(\w+\.+\w{1,4})/)
    if provider.include? "lewagon.org"
      "Well done #{name}, you're skilled and capable"
    elsif provider.include? "gmail.com"
      "#{name}, you're an average but modern person"
    elsif provider.include? "live.com"
      "#{name}, aren't you born before 1973?"
    else
      "Sorry #{name}, we don't know how to judge '#{provider}'"
    end

end

