
# Convert PowerShell Script to Executable

This repository provides a simple PowerShell script that can be converted into an executable file. This is useful if you want to run the script without needing to launch PowerShell each time.

## Prerequisites

- Windows operating system
- PowerShell 5.1 or later

## Usage

1. **Clone the Repository:**

   Clone this repository to your local machine using the following command:

   ```bash
   git clone https://github.com/yourusername/your-repo-name.git
   ```

2. **Install PS2EXE:**

   To convert your PowerShell script to an executable, you'll need to install the `PS2EXE` module. Open PowerShell and run the following command:

   ```powershell
   Install-Module PS2EXE -Scope CurrentUser
   ```

3. **Convert Script to Executable:**

   Replace the placeholders in the `alcasar_login.ps1` file with your actual credentials:

   ```powershell
   username = "EnterUsernameHere"
   password = "EnterPasswordHere"
   ```

   Then, open PowerShell and navigate to the cloned repository directory. Run the following command to convert the script to an executable:

   ```powershell
   ps2exe .\alcasar_login.ps1 .\alcasar_login.exe
   ```

4. **Run on Startup (Optional):**

   If you want the executable to run on startup, you can create a scheduled task. Consult the documentation of your Windows version for instructions on creating scheduled tasks.

   Or follow these steps:
   - Open Task Scheduler
   - Click "Create Task..."
   - Enter a name for the task
   - Select "Run whether user is logged on or not"
    - Select "Run with highest privileges"
    - Select "Configure for" your Windows version
    - Click "Triggers" tab
    - Click "New..."
    - Select "At startup" from the "Begin the task" dropdown
    - Click "OK"
    - Click "Actions" tab
    - Click "New..."
    - Click "Browse..."
    - Select the executable file you created

    Done! The executable will now run on startup.

## Important Note

- This script is provided as-is and comes with no warranties or guarantees. Use it at your own risk.
- Ensure that you only share the executable with trusted parties.
- Be cautious about storing sensitive credentials in plain text within the script. Consider more secure methods for handling credentials.
- Always review the code and its behavior to ensure it aligns with your needs and expectations.

---

**Disclaimer:** The provided script is for educational purposes and may need adjustments to work in your specific environment. The creators are not responsible for any damages or misuse of this script.
