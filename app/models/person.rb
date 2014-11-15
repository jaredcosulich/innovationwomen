class Person < ActiveRecord::Base
  
  def twilio_phonenumber
    return phonenumber if phonenumber.length == 11
    return "1#{phonenumber}" if phonenumber.length == 10
  end
  
end
