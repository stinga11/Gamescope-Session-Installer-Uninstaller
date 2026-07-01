# SteamOS Session Select Polkit Rule

This guide explains the purpose and functionality of adding a specific Polkit rule for the `steamos-session-select` script.

## The Command
```bash
sudo nano /etc/polkit-1/rules.d/49-steamos-session-select.rules
```
* **`sudo nano`**: Opens the text editor with administrative privileges to create or edit the system file.
* **`/etc/polkit-1/rules.d/`**: The standard directory where PolicyKit (Polkit) storage rules are defined.
* **`49-steamos-session-select.rules`**: The specific configuration file that dictates the security policy for switching sessions.

---

## The Code Explained

```javascript
polkit.addRule(function(action, subject) {
    if (action.id == "org.freedesktop.policykit.exec" &&
        action.lookup("program") == "/usr/bin/steamos-session-select" &&
        subject.isInGroup("wheel")) {
        return polkit.Result.YES;
    }
});
```

### Why is this rule necessary?
By default, Linux requires a password when a standard application tries to execute commands that alter system states (like switching between Desktop mode and Gaming mode). 

This script automates that authorization by checking three specific conditions:

1. **`action.id == "org.freedesktop.policykit.exec"`**
   * **What it means:** The system detects an attempt to execute a program with elevated privileges.
2. **`action.lookup("program") == "/usr/bin/steamos-session-select"`**
   * **What it means:** The rule triggers *only* when the specific SteamOS session switcher tool is called. It will not apply to any other program.
3. **`subject.isInGroup("wheel")`**
   * **What it means:** It verifies if the user initiating the command belongs to the **wheel** group (the administrative user group in Arch Linux/SteamOS).

### The Result
* **`return polkit.Result.YES;`**
   * If all three conditions match, Polkit grants immediate permission. 
   * **Benefits:** You can switch between Desktop and Gaming mode seamlessly **without being prompted to type your sudo password** every single time.
