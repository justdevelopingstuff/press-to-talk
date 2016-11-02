# Amazon Web Service aliases

# Create an alias to login to aws ec2 server settings
alias aws-login="google-chrome-stable https://381510294957.signin.aws.amazon.com/console/"

# Create an alias to connect to aws ec2 server
alias aws-connect="ssh -i ~/.ssh/aws/tuna-key-pair-uswest2.pem tuna@ec2-54-218-93-90.us-west-2.compute.amazonaws.com"


#SCP Transfers
#upload a file to the server
aws-to-instance () {
        scp -i ~/.ssh/locationOfYourpemFile -r $1 username@yourAWSEC2address:~${2}
}

#download a file from the server to your computer
aws-to-host () {
        scp -i ~/.ssh/locationOfYourpemFile usrname@yourAWSEC2address:~${1} ~/Downloads/
}

# do not keep bash history so chat logs are not kept
set -o history
