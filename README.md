# Privilege Escalation Excercise

To build, run `./build.sh`. This will create a tar file and put a start script into the `build`
directory. If sending this to someone, send only these files since the other files contain the solution.

To run the tar, run `./start-hacking.sh` from the build folder. The goal is to read the `flag.txt`
file in the home directory.


## Solution

Spoilers ahead!

Use william's special vim binary to write to the teaser-message.sh, add a line there to cat the flag.
Then just use the fact that lars is in sudoers for this special file, and run it as root.
