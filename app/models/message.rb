require 'twilio-ruby'
 
class Message < ActiveRecord::Base

  def send_to_all
    return unless completed_at.nil?
    people = Person.all
    
    client = Twilio::REST::Client.new
    
    ### TEST PEOPLE ###
    people = ['6502693205', '9173277121', '6179809807', '6092877516'].collect do |test_person|
      Person.new(phonenumber: test_person)
    end    
    ### END TEST PEOPLE ###
    
    twilio_numbers = ENV['TWILIO_PHONENUMBERS'].split(',')
    
    people.each_with_index do |person, index|
      next if PersonMessage.where(person_id: person.id, message_id: id).present?
      puts twilio_numbers[index % twilio_numbers.length]
      puts person.twilio_phonenumber
      client.messages.create(
        from: "+#{twilio_numbers[index % twilio_numbers.length]}",
        to: "+#{person.twilio_phonenumber}",
        body: content
      )
      PersonMessage.create(person_id: person.id, message_id: self.id)
    end
  end

end
