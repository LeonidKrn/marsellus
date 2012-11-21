marsellus_w
===========

Gem for objects validation

    require 'marsellus' 

    class MailAddress < Marsellus::Martcher
      class_to_match String
      at_least 5, letters, :length
      value_of(:length).not_more_than 400
      alphabet(('A'..'Z'), [1,2,3,4,5,9], /[a-z]/)

      matches do |str|
	elements = str.split(',')
	elements.first.looks_like_zip?
      end
    end

    class PositiveArray < Marsellus::Matcher
      class_to_match Array
      value_of(:size).at_least 1
      each_element(&:is_a?, Number)
      each_element do |element|
	element > 0
      end
    end
    
    str = 'marsellus@example.com'
    if str.looks_like_email?
      puts "Let's send some threats to #{str}"
    elsif str.looks_like :mail_address
      puts "Let's go to nearest post ofiice"
    elsif str.looks_like :url?
      puts "Well maybe we find some info on this website"
    end
