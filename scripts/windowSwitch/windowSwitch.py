#!/usr/bin/python3
import i3ipc, subprocess, argparse

# Create the Connection object that can be used to send commands and subscribe
# to events.
i3 = i3ipc.Connection()

dmenu_prompt = ""
tree = i3.get_tree()
focused = tree.find_focused()

def get_windows(global_flag):
        cons = []
        ids = []
        # Fetch every container in the workspaces available
        # and store its name and id
        for output in tree:
                if(output.type == "workspace"):
                        if(global_flag or output.name == focused.workspace().name):
                                print(output.name)
                                for con in output:
                                        if(con.name is not None):
                                                cons.append(repr(con.name))
                                                ids.append(con.id)
        return cons, ids

parser = argparse.ArgumentParser()
parser.add_argument("-w", "--workspace", help="list opened windows only in the current workspace", action="store_true")
args = parser.parse_args()
if args.workspace:
        dmenu_prompt = focused.workspace().name
        cons, ids = get_windows(False)
else:
        dmenu_prompt = "Window"
        cons, ids = get_windows(True)

if(cons == []):
        # If there is no opened window
        cons.append("No opened window")

# Format every container name as "choices" input for dmenu
choices = repr("\n").join(cons)

# Execute dmenu command and get its output
dmenu_cmd = "echo -e {0} | dmenu -i -fn 'undefined' -p {1}:".format(choices, dmenu_prompt)
process = subprocess.Popen(dmenu_cmd, shell = True, stdout=subprocess.PIPE)
out, err = process.communicate(timeout=60)
out = repr(out.decode("UTF-8").rstrip())

# Get id of the choosen window
conId = ids[cons.index(out)]

focus_cmd = "i3-msg '[con_id='{0}'] focus'".format(conId)
process = subprocess.Popen(focus_cmd, shell = True)