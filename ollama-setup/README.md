# Ollama Server Setup

This project automates the setup of the Ollama server, which allows you to run the codellama:7b-code model. Below are the instructions on how to use the provided scripts and resources.

## Prerequisites

- Ensure you have `wget` installed on your system to download files.
- Make sure you have the Ollama server installed. You can find installation instructions on the official Ollama documentation.

## Project Structure

```
ollama-setup
├── scripts
│   └── setup_ollama.sh  # Script to set up the Ollama server
├── resources
│   └── Modelfile        # Configuration file for the codellama:7b-code model
└── README.md             # Documentation for the project
```

## Setup Instructions

1. **Clone the Repository**: Clone this repository to your local machine.

2. **Navigate to the Project Directory**:
   ```bash
   cd ollama-setup
   ```

3. **Run the Setup Script**:
   Execute the setup script to download the necessary files and start the Ollama server:
   ```bash
   bash scripts/setup_ollama.sh
   ```

4. **Access the Ollama Server**:
   Once the script has completed, the Ollama server will be running in the background. You can access it at the default port `11434`.

## Notes

- Ensure that the `Modelfile` is correctly configured as per your requirements before running the setup script.
- If you encounter any issues, please refer to the Ollama documentation or check the logs for more information.