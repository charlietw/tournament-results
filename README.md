# Tournament_Results
For project 3 of Udacity's Full Stack Nanodegree


1. In order to run this application, you will first need to install some software to your local machine:
  1. [Vagrant] (https://www.vagrantup.com/)
  2. [VM] (https://www.virtualbox.org/)
2. Once these applications have been successfully installed (for further information/troubleshooting, view the relevant support sections of the software websites), download this repository to your local machine, ensuring the folder structure remains intact.  
3. In a command terminal, change directory ('cd') to the folder you downloaded the files to and type 'vagrant up'. This may take several minutes to complete, so be patient.
4. Once this has been completed, type 'vagrant ssh', then 'cd' again to '/vagrant/tournament'.
5. Now we need to set up the database. You can do this by typing 'psql -f tournament.sql'.
5. From there you can run 'python tournament_test.py', as well as connect directly to the database with 'psql tournament'.
6. Once you have finished with the application, type 'ctrl + c' in the cmd window, then type 'vagrant halt' to close down the virtual machine without losing any data.
