
# creating a method with 3 variables
def full_name(first_name, last_name, title)
  # setting a local variable
  name = nil
# using conditional logic to change flow
  if title && first_name && last_name
    # changing the local variable name to respond to potential inputs
    name = title + ' ' + first_name + ' ' + last_name
# if first if statement is not true use this if statement
  elsif title && last_name
    # changing the local variable name to respond to potential inputs
    name = title + ' ' + last_name
    # if first and second if statement are not true use this if statement
  elsif first_name && last_name
    # changing the local variable name to respond to potential inputs
    name = first_name + ' ' + last_name
    # if first and second and third if statement are not true use this if statement
  elsif first_name
    # changing the local variable name to respond to potential inputs
    name = first_name
    # if the input matches none of the above if statements then choose this value
  else
    # create an exception using the raise method
    raise "That doesn't look like a name!"
# finish the if statement
  end
# complete the method
  return(name)
# finish the method
end
