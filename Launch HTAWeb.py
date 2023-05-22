import subprocess

def display_verbose_info(info):
    print(info)
    # You can add additional actions or modifications here to increase realism

def launch_hta_file():
    verbose_info = [
        "Setting up Internet Explorer runtime...",
        "Loading up HTA code...",
        "Exiting Python loader script..."
    ]
    
    for info in verbose_info:
        display_verbose_info(info)
    
    try:
        subprocess.Popen("htaweb.hta", shell=True)
    except Exception as e:
        print(f"Error launching HTA file: {e}")

launch_hta_file()
