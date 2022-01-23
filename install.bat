chdir ..\SkillMgrApp
call install.bat
chdir ..\docker
docker image build -t skillmgr .    
docker run -dp 4000:80 -v skillmgr-db:/skillmgr/instance -v uploads-folder:/skillmgr/uploads skillmgr