import os, sys
from pathlib import Path
from datetime import datetime
ROOT = Path(__file__)

def robot_local_exe():
    now = datetime.now()
    CURRENT_TIME = now.strftime("%d-%m-%y_%H-%M-%S")
    ROOT = Path(__file__).parent
    
    Profile = os.getenv('PROFILE')

    os.system(f"echo ==============================================================================")
    os.system(f"echo EXECUTION WORKING")
    os.system(f"echo {ROOT}")
    os.system(f"robot -L trace -d results/{CURRENT_TIME}/logs -v CURRENT_TIME:{CURRENT_TIME} -i Test -v ROOT:{ROOT} suites")
    os.system(f"echo ==============================================================================")
    
robot_local_exe()