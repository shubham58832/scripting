#password generator 
#!/bin/bash


length=12

passwd=$(openssl rand -base64 12 | cut -c1-$length)
echo "Generated password : $passwd"


