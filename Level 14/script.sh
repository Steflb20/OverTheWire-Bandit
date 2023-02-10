# Instead of getting the password normally, I had to read it from a file
# But only user "bandit14" is able to read it

# In the root there was a file called "sshkey.private"

cat sshkey.private

# it included a RSA-Key for another user
# This user was the "bandit14" user, so I had to login with it
# With this permissions I could read the password from the file

# For that I copied the value and created a file locally

vim private_key.rsa # Paste Key
sudo ssh -p 2220 -l bandit14 -i private_key.rsa 13.49.2.50


cat /etc/bandit_pass/bandit14

# Password: fGrHPx402xGC7U7rXKDaxiWFTOiF0ENq