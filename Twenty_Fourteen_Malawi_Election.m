% Program to determine the majority winner of an election.
% This software prompts the user to enter the total valid votes for each candidate.
% It calculates and compares the votes to determine the candidate with the highest vote count.
% The program is designed to handle multiple candidates and identifies the winner of the election.
%
% Developed by: Ian Carter Kulani
% Purpose: To calculate and display the winner of an election based on vote counts.
% Contact: iancarterkulani@gmail.com | Phone: +265988061969



% MATLAB code to replicate the C program and show election results
% using Pie chart and Bar chart with custom colors

% Input total registered voters, total votes, and valid votes
Total_Registered_Voters = input('Enter Total Number of Registered Voters:');
Total_Votes = input('Enter Total Votes:');
Total_Valid_Votes = input('Enter Total Number of Valid Votes:');
Total_Null_and_Void_Votes = input('Enter Total Number of Invalid/Blank Votes:');

% Input valid votes for each political party
Total_Valid_Votes_For_Peoples_Party = input('Enter Total Valid Votes For Peoples Party:');
Total_Valid_Votes_For_Democratic_Progressive_Party = input('Enter Total Valid Votes For Democratic Progressive Party:');
Total_Valid_Votes_For_Malawi_Congress_Party = input('Enter Total Valid Votes For Malawi Congress Party:');
Total_Valid_Votes_For_United_Democratic_Front = input('Enter Total Valid Votes For United Democratic Front:');
Total_Valid_Votes_For_National_Salvation_Front = input('Enter Total Valid Votes For National Salvation Front:');
Total_Valid_Votes_For_Progressive_Party_Movement = input('Enter Total Valid Votes For Progressive Party Movement:');
Total_Valid_Votes_For_Chipani_Cha_pfuko = input('Enter Total Valid Votes For Chipani Cha Pfuko:');
Total_Valid_Votes_For_Tisinthe_Alliance = input('Enter Total Valid Votes For Tisinthe Alliance:');
Total_Valid_Votes_For_United_Independent_Party = input('Enter Total Valid Votes For United Independent Party:');
Total_Valid_Votes_For_Peoples_Transformation_Party = input('Enter Total Valid Votes For Peoples Transformation Party:');
Total_Valid_Votes_For_Labour_Party = input('Enter Total Valid Votes For Labour Party:');
Total_Valid_Votes_For_Umodzi_Party = input('Enter Total Valid Votes For Umodzi Party:');

% Calculate majority (more than half of total valid votes)
Majority = Total_Valid_Votes / 2 + 1;

% Calculate percentage of votes for each party
Percentage_Peoples_Party = (Total_Valid_Votes_For_Peoples_Party / Total_Valid_Votes) * 100;
Percentage_DPP = (Total_Valid_Votes_For_Democratic_Progressive_Party / Total_Valid_Votes) * 100;
Percentage_MCP = (Total_Valid_Votes_For_Malawi_Congress_Party / Total_Valid_Votes) * 100;
Percentage_UDF = (Total_Valid_Votes_For_United_Democratic_Front / Total_Valid_Votes) * 100;
Percentage_NSF = (Total_Valid_Votes_For_National_Salvation_Front / Total_Valid_Votes) * 100;
Percentage_PPM = (Total_Valid_Votes_For_Progressive_Party_Movement / Total_Valid_Votes) * 100;
Percentage_CCPF = (Total_Valid_Votes_For_Chipani_Cha_pfuko / Total_Valid_Votes) * 100;
Percentage_TA = (Total_Valid_Votes_For_Tisinthe_Alliance / Total_Valid_Votes) * 100;
Percentage_UIP = (Total_Valid_Votes_For_United_Independent_Party / Total_Valid_Votes) * 100;
Percentage_PTP = (Total_Valid_Votes_For_Peoples_Transformation_Party / Total_Valid_Votes) * 100;
Percentage_LP = (Total_Valid_Votes_For_Labour_Party / Total_Valid_Votes) * 100;
Percentage_UP = (Total_Valid_Votes_For_Umodzi_Party / Total_Valid_Votes) * 100;

% Display the percentages for each party
fprintf('\nPercentage of Votes for Each Party:\n');
fprintf('Peoples Party: %.2f%%\n', Percentage_Peoples_Party);
fprintf('Democratic Progressive Party (DPP): %.2f%%\n', Percentage_DPP);
fprintf('Malawi Congress Party (MCP): %.2f%%\n', Percentage_MCP);
fprintf('United Democratic Front (UDF): %.2f%%\n', Percentage_UDF);
fprintf('National Salvation Front (NSF): %.2f%%\n', Percentage_NSF);
fprintf('Progressive Party Movement (PPM): %.2f%%\n', Percentage_PPM);
fprintf('Chipani Cha Pfuko (CCPF): %.2f%%\n', Percentage_CCPF);
fprintf('Tisinthe Alliance (TA): %.2f%%\n', Percentage_TA);
fprintf('United Independent Party (UIP): %.2f%%\n', Percentage_UIP);
fprintf('Peoples Transformation Party (PTP): %.2f%%\n', Percentage_PTP);
fprintf('Labour Party (LP): %.2f%%\n', Percentage_LP);
fprintf('Umodzi Party (UP): %.2f%%\n', Percentage_UP);

% Create a Pie chart with specific colors for each party
% Colors for Pie Chart
party_names = {'Peoples Party', 'DPP', 'MCP', 'UDF', 'NSF', 'PPM', 'CCPF', 'TA', 'UIP', 'PTP', 'LP', 'UP'};
percentages = [Percentage_Peoples_Party, Percentage_DPP, Percentage_MCP, Percentage_UDF, ...
    Percentage_NSF, Percentage_PPM, Percentage_CCPF, Percentage_TA, Percentage_UIP, ...
    Percentage_PTP, Percentage_LP, Percentage_UP];

% Define the colors for each party (specific colors for PP, DPP, MCP, etc.)
colors = [1.0, 0.647, 0;        % Orange for Peoples Party
          0, 0, 1;              % Blue for DPP
          1, 0, 0;              % Red for MCP
          1, 1, 0;              % Yellow for UDF (Updated color)
          0.25, 0.25, 0.25;     % Dark Grey for NSF
          0.2, 0.6, 0.2;        % Green for PPM
          0.7, 0.7, 0.7;        % Light Grey for CCPF
          0.5, 0.0, 0.5;        % Purple for TA
          0.6, 0.4, 0;          % Brown for UIP
          0.9, 0.6, 0.2;        % Yellow for PTP
          0.8, 0.6, 0.6;        % Light Red for LP
          0.3, 0.3, 0.3];       % Darker Grey for UP

% Plot Pie chart
figure;
pie(percentages, party_names);
colormap(colors);
title('Election Results by Political Party');

% Create a Bar chart with specific colors
figure;
bar(percentages, 'FaceColor', 'flat');
set(gca, 'XTickLabel', party_names, 'XTick', 1:numel(party_names));
title('Election Results by Political Party');
ylabel('Percentage of Votes');
xtickangle(45);  % Rotate x-axis labels for better readability
