#This is for Assignment 5.2 - Release 1
information = {
	"Name" => "Slappy McGoo",
	"Address" => "700 Fake Rd.",
	"Email" => "slippymcslappy@gmail.com",
	"Phone" => "(714) 855-1943"
}

#Question 2
 p information["Phone"]
 information["Phone"] = "(714) 855-2943"
 p information["Phone"]
 information["Decision"] = "Hired"
 p information

 #Question 3 - It worked
 information["Interviews"] = 2
 p information

#Question 4 = It worked
p information["Name"]+information["Address"]


#Question 5: Can I delete key/value pairs from the hash? Answer: Yes
information.delete("Address")
p information

