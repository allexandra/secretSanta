
valid_santa = ["alexandra", "alin", "bogdan", "chiru", "cristina", "dan", "gabi", "georgiana", "horvath", "iulia", "marius", "raul", "roxana", "victor"]
array       = %W(alexandra alin bogdan chiru cristina dan gabi georgiana horvath iulia marius raul roxana victor)

while array.length > 0
  puts "What's your name?"
  name = gets.chomp.downcase


  # ! name should be from the list
  while !valid_santa.include?(name)
    puts "This is not a valid name. Please enter your REAL name:"
    name = gets.chomp.downcase
  end

  # remove Santa from valid list
   valid_santa.delete(name)
  p valid_santa
  p valid_santa.length

  ## we need to remember that the name needs to be added back in the array
  #found = array.include?(name)
  #
  ## check if the name is still in the list
  #if found
  #  # the chosen name will be deleted
  #  array.delete(name)
  #end

  # return a random name from the remaining list
  random_name = array[rand(array.length)].capitalize
  p random_name

  ## if Santa's name was in the list
  #if found
  #  # put the name back in the list
  #  array << name
  #  array.sort!
  #end

  # delete ther etered name from the list
  array.delete(random_name.downcase)
  p array
  p array.length
  puts "Hello \"Santa #{name.capitalize}\", please enter your email address:"
  email = gets.chomp

  # ! email address should have the correct format
  while email.scan(/\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/).empty?
    puts "error, please enter your email:"
    email = gets.chomp
  end

  # send an email with the result

#  require 'net/smtp'
#
#  message = <<MESSAGE_END
#From: Secret Santa <secret.santa@ro.simplon.co>
#To: #{name} <#{email}>
#Subject: Secret Santa
#
#This is a message from Santa! Ho-ho-ho! Your money will go to: #{random_name}.
#MESSAGE_END
#
#  Net::SMTP.start('localhost') do |smtp|
#    smtp.send_message message, 'secret.santa@ro.simplon.co', email
#  end
#
#
#  require 'mail'
#  mail = Mail.new do
#    from     'secret.santa@ro.simplon.co'
#    to       email
#    subject  'Secret Santa'
#    body     File.read('body.txt')
#  end
#
#  mail.delivery_method :sendmail
#
#  mail.deliver

  puts "Thanks! Next Santa:"
  puts "Press enter to start the game:"
  gets.chomp
end
puts "Bye! Bye!"