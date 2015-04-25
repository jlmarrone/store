module ValidFormats
  URL         = /\A(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?\z/ix
  DOMAIN_NAME = /\A(?:[\w-]+\.)+[a-zA-Z]{2,7}\z/ix
  #This reg exp doesn't allow email addresses like:
  #  hello+world@mail.com
  #  hello.world@gmail.com
  # EMAIL       = /^[\w-]+(?:[\w-])*@(?:[\w-]+\.)+[a-zA-Z]{2,7}$/ix

  EMAIL     = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
end
