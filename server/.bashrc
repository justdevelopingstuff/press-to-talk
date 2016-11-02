# Message in chat, termed "press-to-talk". Adds message into the chat file 
function ptt () {
        echo "$(TZ=America/Vancouver date) $USER: $@" >> /home/ubuntu/jds-drive/transmission
} # enter location of your chat file

# Open chat
alias transmitting="tail -f /home/ubuntu/jds-drive/transmission &"

# Show On and Off status
alias pon="ptt Beauty transmitting, do you copy?" #press-to-indicate-on
alias poff="ptt  out" #press-to-indicate-off

# Read more than recent lines of chat
function read-transmission () {
        tail -n $1 /home/ubuntu/jds-drive/transmission
}

#check if any other users are on
alias userson="ps auxwww | grep sshd"
