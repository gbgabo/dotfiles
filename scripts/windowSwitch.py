#!/usr/bin/python3
import i3ipc, subprocess

# Create the Connection object that can be used to send commands and subscribe
# to events.
i3 = i3ipc.Connection()

cons = []
ids = []
# Fetch every container in the workspaces available
# and store its name and id
root = i3.get_tree()
for output in root:
    if(output.type == "workspace"):
        for con in output:
                if(con.name is not None):
                        cons.append(repr(con.name))
                        ids.append(con.id)

if(cons == []):
        # If there is no window opened
        cons.append("No window open")

# Format every container name as "choices" input for dmenu
choices = repr("\n").join(cons)

# Execute dmenu command and get its output
dmenu_cmd = "echo -e {0} | dmenu -i -fn 'undefined' -p 'Window:'".format(choices)
process = subprocess.Popen(dmenu_cmd, shell = True, stdout=subprocess.PIPE)
out, err = process.communicate(timeout=60)
out = repr(out.decode("UTF-8").rstrip())

# Get id of the choosen window
conId = ids[cons.index(out)]

focus_cmd = "i3-msg '[con_id='{0}'] focus'".format(conId)
process = subprocess.Popen(focus_cmd, shell = True, stdout=subprocess.PIPE)