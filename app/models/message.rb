require 'twilio-ruby'
 
class Message < ActiveRecord::Base

  has_many :person_messages

  def send_to_all
    return unless completed_at.nil?
    people = Person.all
    
    client = Twilio::REST::Client.new
    
    ### TEST PEOPLE ###
    # people = ['6502693205', '9173277121', '6179809807', '6092877516'].collect do |test_person|
    # people = ['6502693205'].collect do |test_person|
    #   Person.create(phonenumber: test_person) if Person.where(phonenumber: test_person).blank?
    # end    
    ### END TEST PEOPLE ###
    
    twilio_numbers = ENV['TWILIO_PHONENUMBERS'].split(',')
    
    people.each_with_index do |person, index|
      next if PersonMessage.where(person_id: person.id, message_id: id).present?
      puts twilio_numbers[index % twilio_numbers.length]
      puts person.twilio_phonenumber
      begin
        client.messages.create(
          from: "+#{twilio_numbers[index % twilio_numbers.length]}",
          to: "+#{person.twilio_phonenumber}",
          body: content
        )
      rescue
        puts ''
        puts ''
        puts "FAILED: #{person.twilio_phonenumber}"
        puts ''
        puts ''
      end
      PersonMessage.create(person_id: person.id, message_id: self.id)
    end
    
    update_attributes(completed_at: Time.new)
  end
  
  def status
    if completed_at
      'Complete'
    else
      "#{person_messages.count} out of #{Person.count}"
    end
  end

end
