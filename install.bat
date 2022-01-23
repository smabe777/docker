chdir ..\SkillMgrApp
call install.bat
chdir ..\docker
docker image build -t skillmgr .    
docker run -dp 5000:80 -v skillmgr-db:/skillmgr/instance skillmgr