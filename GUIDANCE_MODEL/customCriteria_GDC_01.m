function customCriteria_GDC_01(test)
tStep =0.2;
lastvalue00=0;
%% Test Case 01
% Get the last values
tSim01=1;
firstvalue01=lastvalue00+1;
lastvalue01=lastvalue00+tSim01/tStep;
INTERP_VALID_01 = test.sltest_simout.logsout.getElement('salidas.INTERP_VALID').Values.Data(lastvalue01);
speed01 = test.sltest_simout.logsout.getElement('salidas.speed').Values.Data(lastvalue01);
alt01 = test.sltest_simout.logsout.getElement('salidas.altitude').Values.Data(lastvalue01);
SEQUENCE_LEG_01=0;
for i = firstvalue01:lastvalue01 
    SEQUENCE_LEG_01 = SEQUENCE_LEG_01 + test.sltest_simout.logsout.getElement('salidas.SEQUENCE_LEG').Values.Data(i);
end
% Tolerances
speedBC01=150.035;
speedBCH=speedBC01*1.01;
speedBCL=speedBC01*0.99;
altBC01=191.695;
altBCH=altBC01*1.01;
altBCL=altBC01*0.99;

% Verify
test.verifyTrue(INTERP_VALID_01)
test.verifyLessThan(speed01,speedBCH)
test.verifyGreaterThan(speed01,speedBCL)
test.verifyLessThan(alt01,altBCH)
test.verifyGreaterThan(alt01,altBCL)
test.verifyEqual(SEQUENCE_LEG_01,0)

%% Test Case 02
% Get the last values
tSim02=1;
firstvalue02=lastvalue01+1;
lastvalue02=lastvalue01+tSim02/tStep;
INTERP_VALID_02 = test.sltest_simout.logsout.getElement('salidas.INTERP_VALID').Values.Data(lastvalue02);
speed02 = test.sltest_simout.logsout.getElement('salidas.speed').Values.Data(lastvalue02);
alt02 = test.sltest_simout.logsout.getElement('salidas.altitude').Values.Data(lastvalue02);
SEQUENCE_LEG_02=0;
for i = firstvalue02:lastvalue02 
    SEQUENCE_LEG_02 = SEQUENCE_LEG_02 + test.sltest_simout.logsout.getElement('salidas.SEQUENCE_LEG').Values.Data(i);
end

% Verify
test.verifyFalse(INTERP_VALID_02)
test.verifyEqual(speed02,250)
test.verifyEqual(alt02,5000)
test.verifyEqual(SEQUENCE_LEG_02,0)

%% Test Case 03
% Get the last values
tSim03=1;
firstvalue03=lastvalue02+1;
lastvalue03=lastvalue02+tSim03/tStep;
INTERP_VALID_03 = test.sltest_simout.logsout.getElement('salidas.INTERP_VALID').Values.Data(lastvalue03);
speed03 = test.sltest_simout.logsout.getElement('salidas.speed').Values.Data(lastvalue03);
alt03 = test.sltest_simout.logsout.getElement('salidas.altitude').Values.Data(lastvalue03);
SEQUENCE_LEG_03=0;
for i = firstvalue03:lastvalue03 
    SEQUENCE_LEG_03 = SEQUENCE_LEG_03 + test.sltest_simout.logsout.getElement('salidas.SEQUENCE_LEG').Values.Data(i);
end

% Verify
test.verifyFalse(INTERP_VALID_03)
test.verifyEqual(speed03,250)
test.verifyEqual(alt03,5000)
test.verifyEqual(SEQUENCE_LEG_03,0)

%% Test Case 04
% Get the last values
tSim04=1;
firstvalue04=lastvalue03+1;
lastvalue04=lastvalue03+tSim04/tStep;
INTERP_VALID_04 = test.sltest_simout.logsout.getElement('salidas.INTERP_VALID').Values.Data(lastvalue04);
speed04 = test.sltest_simout.logsout.getElement('salidas.speed').Values.Data(lastvalue04);
alt04 = test.sltest_simout.logsout.getElement('salidas.altitude').Values.Data(lastvalue04);
SEQUENCE_LEG_04=0;
for i = firstvalue04:lastvalue04 
    SEQUENCE_LEG_04 = SEQUENCE_LEG_04 + test.sltest_simout.logsout.getElement('salidas.SEQUENCE_LEG').Values.Data(i);
end

% Verify
test.verifyFalse(INTERP_VALID_04)
test.verifyEqual(speed04,150)
test.verifyEqual(alt04,190)
test.verifyEqual(SEQUENCE_LEG_04,0)

%% Test Case 05
% Get the last values
tSim05=1;
firstvalue05=lastvalue04+1;
lastvalue05=lastvalue04+tSim01/tStep;
INTERP_VALID_05 = test.sltest_simout.logsout.getElement('salidas.INTERP_VALID').Values.Data(lastvalue05);
speed05 = test.sltest_simout.logsout.getElement('salidas.speed').Values.Data(lastvalue05);
alt05 = test.sltest_simout.logsout.getElement('salidas.altitude').Values.Data(lastvalue05);
SEQUENCE_LEG_05=0;
for i = firstvalue05:lastvalue05 
    SEQUENCE_LEG_05 = SEQUENCE_LEG_05 + test.sltest_simout.logsout.getElement('salidas.SEQUENCE_LEG').Values.Data(i);
end
% Tolerances
speedBC01=250;
speedBCH=speedBC01*1.01;
speedBCL=speedBC01*0.99;
altBC01=5007;
altBCH=altBC01*1.01;
altBCL=altBC01*0.99;

% Verify
test.verifyTrue(INTERP_VALID_05)
test.verifyLessThan(speed05,speedBCH)
test.verifyGreaterThan(speed05,speedBCL)
test.verifyLessThan(alt05,altBCH)
test.verifyGreaterThan(alt05,altBCL)
test.verifyGreaterThan(SEQUENCE_LEG_05,0)

%% Test Case 06
% Get the last values
tSim06=1;
firstvalue06=lastvalue05+1;
lastvalue06=lastvalue05+tSim06/tStep;
INTERP_VALID_06 = test.sltest_simout.logsout.getElement('salidas.INTERP_VALID').Values.Data(lastvalue06);
speed06 = test.sltest_simout.logsout.getElement('salidas.speed').Values.Data(lastvalue06);
alt06 = test.sltest_simout.logsout.getElement('salidas.altitude').Values.Data(lastvalue06);
SEQUENCE_LEG_06=0;
for i = firstvalue06:lastvalue06 
    SEQUENCE_LEG_06 = SEQUENCE_LEG_06 + test.sltest_simout.logsout.getElement('salidas.SEQUENCE_LEG').Values.Data(i);
end

% Verify
test.verifyFalse(INTERP_VALID_06)
test.verifyEqual(speed06,250)
test.verifyEqual(alt06,5000)
test.verifyEqual(SEQUENCE_LEG_06,0)

%% Test Case 07
% Get the last values
tSim07=1;
firstvalue07=lastvalue06+1;
lastvalue07=lastvalue06+tSim07/tStep;
INTERP_VALID_07 = test.sltest_simout.logsout.getElement('salidas.INTERP_VALID').Values.Data(lastvalue07);
speed07 = test.sltest_simout.logsout.getElement('salidas.speed').Values.Data(lastvalue07);
alt07 = test.sltest_simout.logsout.getElement('salidas.altitude').Values.Data(lastvalue07);
SEQUENCE_LEG_07=0;
for i = firstvalue07:lastvalue07 
    SEQUENCE_LEG_07 = SEQUENCE_LEG_07 + test.sltest_simout.logsout.getElement('salidas.SEQUENCE_LEG').Values.Data(i);
end
% Tolerances
speedBC07=248.54;
speedBCH=speedBC07*1.01;
speedBCL=speedBC07*0.99;
altBC07=4930;
altBCH=altBC07*1.01;
altBCL=altBC07*0.99;

% Verify
test.verifyTrue(INTERP_VALID_07)
test.verifyLessThan(speed07,speedBCH)
test.verifyGreaterThan(speed07,speedBCL)
test.verifyLessThan(alt07,altBCH)
test.verifyGreaterThan(alt07,altBCL)
test.verifyEqual(SEQUENCE_LEG_07,0)

%% Test Case 08
% Get the last values
tSim08=1;
firstvalue08=lastvalue07+1;
lastvalue08=lastvalue07+tSim08/tStep;
INTERP_VALID_08 = test.sltest_simout.logsout.getElement('salidas.INTERP_VALID').Values.Data(lastvalue08);
speed08 = test.sltest_simout.logsout.getElement('salidas.speed').Values.Data(lastvalue08);
alt08 = test.sltest_simout.logsout.getElement('salidas.altitude').Values.Data(lastvalue08);
SEQUENCE_LEG_08=0;
for i = firstvalue08:lastvalue08 
    SEQUENCE_LEG_08 = SEQUENCE_LEG_08 + test.sltest_simout.logsout.getElement('salidas.SEQUENCE_LEG').Values.Data(i);
end

% Verify
test.verifyFalse(INTERP_VALID_08)
test.verifyEqual(speed08,250)
test.verifyEqual(alt08,5000)
test.verifyEqual(SEQUENCE_LEG_08,0)

%% Test Case 09
% Get the last values
tSim09=1;
firstvalue09=lastvalue08+1;
lastvalue09=lastvalue08+tSim01/tStep;
INTERP_VALID_09 = test.sltest_simout.logsout.getElement('salidas.INTERP_VALID').Values.Data(lastvalue09);
speed09 = test.sltest_simout.logsout.getElement('salidas.speed').Values.Data(lastvalue09);
alt09 = test.sltest_simout.logsout.getElement('salidas.altitude').Values.Data(lastvalue09);
SEQUENCE_LEG_09=0;
for i = firstvalue09:lastvalue09 
    SEQUENCE_LEG_09 = SEQUENCE_LEG_09 + test.sltest_simout.logsout.getElement('salidas.SEQUENCE_LEG').Values.Data(i);
end
% Tolerances
speedBC09=250;
speedBCH=speedBC09*1.01;
speedBCL=speedBC09*0.99;
altBC09=5007;
altBCH=altBC09*1.01;
altBCL=altBC09*0.99;

% Verify
test.verifyTrue(INTERP_VALID_09)
test.verifyLessThan(speed09,speedBCH)
test.verifyGreaterThan(speed09,speedBCL)
test.verifyLessThan(alt09,altBCH)
test.verifyGreaterThan(alt09,altBCL)
test.verifyGreaterThan(SEQUENCE_LEG_09,0)

%% Test Case 10
% Get the last values
tSim10=1;
firstvalue10=lastvalue09+1;
lastvalue10=lastvalue09+tSim10/tStep;
INTERP_VALID_10 = test.sltest_simout.logsout.getElement('salidas.INTERP_VALID').Values.Data(lastvalue10);
speed10 = test.sltest_simout.logsout.getElement('salidas.speed').Values.Data(lastvalue10);
alt10 = test.sltest_simout.logsout.getElement('salidas.altitude').Values.Data(lastvalue10);
SEQUENCE_LEG_10=0;
for i = firstvalue10:lastvalue10 
    SEQUENCE_LEG_10 = SEQUENCE_LEG_10 + test.sltest_simout.logsout.getElement('salidas.SEQUENCE_LEG').Values.Data(i);
end

% Verify
test.verifyFalse(INTERP_VALID_10)
test.verifyEqual(speed10,250)
test.verifyEqual(alt10,11000)
test.verifyGreaterThan(SEQUENCE_LEG_10,0)
end