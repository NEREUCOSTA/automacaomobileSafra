# Introduction 
- This project are just a model to use for your personal or professional projects, could you pass this link of my github for your pairs and divulgate, thank you!

# Getting Started
TODO: Guide users through getting your code up and running on their own system. In this section you can talk about:
- RUN_TESTS.PY
    - This file is about settings for run this project in line 16: *os.system(f"robot -L trace -d Results/{CURRENT_TIME}/logs -v CURRENT_TIME:{CURRENT_TIME} -i [Tags] -v ROOT:{ROOT} suites")* - To run the exextly test case with this [Tags]
        => If you want to execute the all test cases of suite, you just need delete the sentence *-i [Tags]*.

- REQUIREMENTS.TXT
    - This file is about all of librarys that you need install for run this project, if you run the command *pip install -r requirements.txt* on your CMD or Prower Shell, this librarys will install.

- SUITES
    - Here we have all test cases.

- RESOURCES / MAIN.ROBOT
    - This file contains all of librarys instantiated and the way of our controllers, then if you call this like *Resource  ${ROOT}/resources/main.robot* on anyone file of this project, your resources are instantiated automatically.

- SHARED / HOOK.ROBOT
    - Now here have the file hook, that contains keywords with flows to help you and the project like a Start Aplication, Close Aplication and others.

- SHARED / SETUPS_TEARDOWNS.ROBOT
    - Here we found all of Test and Suit Setup and Teardown, all for start your test in a specific point of system, for exemple doing Login or Syncronize datas.

- RESOURCES / CONTROLLERS
    - Here we have all of files with our Elements Mapped and keywords with the actions, like a click element and wait the element is visible, and a particularity of our project are that we don't have two separeted folders, one called Page Objects with the mapped elements and other called Controller with the keywords the actions how is normally in others projects.

- RESOURCES / DATA
    - We have here files with datas for use for the tests and have too the file with settings.

- RESOURCES / UTILS
    - Here have a helpers for this project.

- RESULTS
    - Here are where all of reports and screenshots are saved.

- APP
    - And finally we have here the APK that you use to test.

# Clone Project
- GitHub: https://github.com/VictorHOliveira/Victor-Robot

# Execute Tests
Step 1:
    Verify on file "run_tests.py" if the string of execution, on line 16, does it agree with the test you wanna run.
        EX:
        1 - os.system(f"robot -L trace -d Results/{CURRENT_TIME}/logs -v CURRENT_TIME:{CURRENT_TIME} -i TC000 -v ROOT:{ROOT} suites/Android") - To run TC-000;
        2 - os.system(f"robot -L trace -d Results/{CURRENT_TIME}/logs -v CURRENT_TIME:{CURRENT_TIME} -v ROOT:{ROOT} suites/Android") - To execute all the tests of Suite;

Step 2:
    Open your console on the main folder of this project and execute the command "python run_tests.py";

# Contribute
- Victor Hugo de Oliveira | *Especialist Automation*
    - victor.oliver87@gmail.com
    - https://github.com/VictorHOliveira/Victor-Robot