clc
clear all

for i=1:50
    Power    =  xlsread(['Good_CS_',num2str(i),'.xlsx'],['Final_Power'],'B2:K366');
    Duration =  xlsread(['Good_CS_',num2str(i),'.xlsx'],['Final_Duration'],'B2:K366');
    Start_B  =  xlsread(['Good_CS_',num2str(i),'.xlsx'],['Final_Start'],'B2:K366');
    Final_B  =  xlsread(['Good_CS_',num2str(i),'.xlsx'],['Final_Shut'],'B2:K366');
    Start_S  =  xlsread(['Good_CS_',num2str(i),'.xlsx'],['Possible_Start'],'B2:K366');
    Final_S  =  xlsread(['Good_CS_',num2str(i),'.xlsx'],['Possible_Shut'],'B2:K366');
    PV_Load  =  xlsread(['Good_CS_',num2str(i),'.xlsx'],['Load_PV'],'A2:H35137');
    EV       =  xlsread(['Good_CS_',num2str(i),'.xlsx'],['EV'],'B2:I366');
    AV       =  xlsread(['Good_CS_',num2str(i),'.xlsx'],['AV_Data'],'B2:CS366');
    Criteria =  xlsread(['Good_CS_',num2str(i),'.xlsx'],['Criteria'],'B1:B3');
    save(['HEMS_',num2str(i),'.mat'],'Power','Duration','Start_B','Final_B','Start_S','Final_S','PV_Load','EV','AV','Criteria')
end
