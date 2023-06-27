# New Repository Setup Script

This Bash script helps you quickly add a new repository from the terminal.

## Instructions

1. **Download the script**: Download the `script.sh` file and place it in a location of your choice on your computer.

2. **Open the script file**: Open the `script.sh` file using a text editor.

3. **Replace access token**: Replace `<GITHUB_PERSONAL_TOKEN>` with your personal GitHub access token. If you don't have a token, you can generate one by following the instructions [here](https://catalyst.zoho.com/help/tutorials/githubbot/generate-access-token.html).

4. **Replace GitHub username**: Replace `<YOUR_GITHUB_USERNAME>` with your GitHub username.

5. **Save the changes**: Save the changes to the script file.

## Making the Script Executable

1. **Open your terminal**: Open your terminal application.

2. **Navigate to the script location**: Use the `cd` command to navigate to the location where you placed the script.

3. **Make the script executable**: Run the following command to make the script executable:
    ```
    chmod +x script.sh
    ```

## Setting Up an Alias for Easy Access (Optional)

1. **Open your shell configuration file**: Open `~/.bashrc` or `~/.zshrc` in a text editor.

2. **Add the alias**: Add the following line at the end of the file, replacing `<SCRIPT_LOCATION>` with the actual path where you placed the script:
    ```
    alias github_new_repo="bash <SCRIPT_LOCATION>/script.sh"
    ```

3. **Save the changes**: Save the changes to the file.

4. **Restart your terminal**: Restart your terminal application or open a new terminal window.

## Usage

To create a new repository using the script, follow these steps:

1. **Open your terminal**: Open your terminal application.

2. **Run the script**: Type the following command and press Enter:
    ```
    github_new_repo
    ```

3. **Follow the prompts**: Provide the necessary information, such as the repository name and description, as prompted.

4. **Create the repository**: The script will create a new repository on GitHub using the provided information.

---

By following these instructions, you can easily set up the script and use it to create new repositories directly from the terminal.

**Note**: This script assumes you have Bash installed on your system.
