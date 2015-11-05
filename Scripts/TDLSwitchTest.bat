REM: %1 is the path to ToDoList.exe 
REM: and is the first item on every line

REM: Start TDL and pause -------------------------------------------------------------------

START "" %1
PAUSE

REM: Display help dialog -------------------------------------------------------------------

REM: %1 -?

REM: %1 -h

REM: %1 -help

REM: Task  ---------------------------------------------------------------------------------
REM: SWITCH_INIFILE				
REM: %1 -i

REM: Task  ---------------------------------------------------------------------------------
REM: SWITCH_TASKFILE				
REM: %1 -f

REM: Task  ---------------------------------------------------------------------------------
REM: SWITCH_FORCEVISIBLE			
REM: %1 -v

REM: Task  ---------------------------------------------------------------------------------
REM: SWITCH_NOPWORDPROMPT			
REM: %1 -x

REM: Task  ---------------------------------------------------------------------------------
REM: SWITCH_LOGGING				
REM: %1 -g

REM: Task  ---------------------------------------------------------------------------------
REM: SWITCH_IMPORT					
REM: %1 -m

REM: Start Empty Instance ------------------------------------------------------------------
REM: SWITCH_STARTEMPTY				
REM: %1 -e

REM: Create a new Tasklist -----------------------------------------------------------------

	%1 -cmd 32780

REM: Task  ---------------------------------------------------------------------------------
REM: SWITCH_TASKLINK				
REM: %1 -l

REM: Task  ---------------------------------------------------------------------------------
REM: SWITCH_ADDTODICT				
REM: %1 -t

REM: Task  ---------------------------------------------------------------------------------
REM: SWITCH_TRANSUPPER				
REM: %1 -u

REM: Task  ---------------------------------------------------------------------------------
REM: SWITCH_RESTART				
REM: %1 -rst

REM: Task  ---------------------------------------------------------------------------------
REM: SWITCH_SAVEINTERMEDIATE		
REM: %1 -si

REM: Task  ---------------------------------------------------------------------------------
REM: SWITCH_SAVEUIVISINTASKLIST	
REM: %1 -z

REM: Task  ---------------------------------------------------------------------------------
REM: SWITCH_QUIET					
REM: %1 -q

REM: New Task ------------------------------------------------------------------------------

	%1 -nt "nt (New Task)"

REM:   -------------------------------------------------------------------------------------
REM: SWITCH_PARENTID				
REM: %1 -pid

REM:   -------------------------------------------------------------------------------------
REM: SWITCH_SIBLINGID				
REM: %1 -bid

REM:   -------------------------------------------------------------------------------------
REM: SWITCH_SELECTTASKID			
REM: %1 -tid

REM: Task Comments -------------------------------------------------------------------------

	%1 -nt "cm (Append to Task Comments)" -cm "New task comments"
	%1 -cm "This line was appended"

REM: Task  ---------------------------------------------------------------------------------

	%1 -nt "xid (Set External ID = 0987654321)" -xid "0987654321"

REM: Task Category -------------------------------------------------------------------------

	%1 -nt "c (Task Category = c1,c2,c3)" -c c1 c2 c3

	%1 -nt "c (Task Category = c1,c2,c3 -> c4)" -c c1 c2 c3
	%1 -c c4

	%1 -nt "c (Task Category = c1 + c4 = c1,c4)" -c c1
	%1 -c +c4

REM: Task Status ---------------------------------------------------------------------------

	%1 -nt "s (Task Status = In Progress)" -s "In Progress"

REM: Task Priority -------------------------------------------------------------------------

	%1 -nt "p (Task Priority = 7)" -p 7

	%1 -nt "p (Task Priority = 7 - 3 = 4)" -p 7
	%1 -p -3

	%1 -nt "p (Task Priority = 7 + 3 = 10)" -p 7
	%1 -p +3

REM: Task Risk -----------------------------------------------------------------------------

	%1 -nt "r (Task Risk = 3)" -r 3

	%1 -nt "r (Task Risk = 3 - 2 = 1)" -r 3
	%1 -r -2

	%1 -nt "r (Task Risk = 3 + 4 = 7)" -r 3
	%1 -r +4

REM: Task Tag ------------------------------------------------------------------------------

	%1 -nt "tg (Task Tag = t1,t2,t3)" -tg t1 t2 t3

	%1 -nt "tg (Task Tag = t1 + t4)" -tg t1
	%1 -tg +t4

REM: Task Cost -----------------------------------------------------------------------------

	%1 -nt "cs (Task Cost = 10)" -cs 10

	%1 -nt "cs (Task Cost = 10 -> 7)" -cs 10
	%1 -cs 7

	%1 -nt "cs (Task Cost = 10 + 4 = 14)" -cs 10
	%1 -cs +4

	%1 -nt "cs (Task Cost = 10 - 2 = 8)" -cs 10
	%1 -cs -2

REM: Task Dependency -----------------------------------------------------------------------

REM: %1 -nt "dp (Task Dependency = 10)" -dp 10

REM: Task Time Estimate --------------------------------------------------------------------

	%1 -nt "te (Task Time Estimate = 8.1 hours)" -te 8.1

	%1 -nt "te (Task Time Estimate = 8.1 -> 4.3 hours)" -te 8.1
	%1 -te 4.3

	%1 -nt "te (Task Time Estimate = 8.1 - 5.5 = 2.6 hours)" -te 8.1
	%1 -te -5.5

	%1 -nt "te (Task Time Estimate = 8.1 + 2.3 = 10.4 hours)" -te 8.1
	%1 -te +2.3

	%1 -nt "te (Task Time Estimate = 8.1 Hours + 90 Minutes = 9.6 hours)" -te 8.1
	%1 -te +90I

	%1 -nt "te (Task Time Estimate = 90 Minutes + 0.25 Hours = 105 Minutes)" -te 90I
	%1 -te +0.25H

REM: Task Time Spent -----------------------------------------------------------------------

	%1 -nt "ts (Task Time Spent = 5.9 mins)" -ts 5.9I

	%1 -nt "ts (Task Time Spent = 5.9 hours)" -ts 5.9H

	%1 -nt "ts (Task Time Spent = 5.9 days)" -ts 5.9D

	%1 -nt "ts (Task Time Spent = 5.9 weeks)" -ts 5.9W

	%1 -nt "ts (Task Time Spent = 5.9 months)" -ts 5.9M

	%1 -nt "ts (Task Time Spent = 5.9 years)" -ts 5.9Y

	%1 -nt "ts (Task Time Spent = 5.9 -> 7.8 hours)" -ts 5.9
	%1 -ts 7.8

	%1 -nt "ts (Task Time Spent = 5.9 - 1.3 = 4.6 hours)" -ts 5.9
	%1 -ts -3.7

	%1 -nt "ts (Task Time Spent = 5.9 + 2.7 = 8.6 hours)" -ts 5.9
	%1 -ts +2.7

REM: Task File Reference -------------------------------------------------------------------

	%1 -nt "fr (Task File Reference = Notepad.exe)" -fr "c:\windows\system32\notepad.exe"

REM: Task Allocated By ---------------------------------------------------------------------

	%1 -nt "ab (Task Allocated By = Mary)" -ab Mary

	%1 -nt "ab (Task Allocated By = Mary -> Jane)" -ab Mary
	%1 -ab Jane

REM: Task Allocated To ---------------------------------------------------------------------

	%1 -nt "at (Task Allocated To = Dave, Bob)" -at Dave Bob

	%1 -nt "at (Task Allocated To = Dave + Pete)" -at Dave
	%1 -at +Pete

	%1 -nt "at (Task Allocated To = Dave, Bob -> Frank)" -at Dave Bob
	%1 -at Frank

REM: Task Start Date -----------------------------------------------------------------------
		
	%1 -nt "sd (Task Start Date = 9/8/7)" -sd "9/8/07"

REM: Task Start Time -----------------------------------------------------------------------
		
	%1 -nt "st (Task Start Time)" -st

REM: Task Due Date -------------------------------------------------------------------------
	
	%1 -nt "dd (Task Due Date = 28/11/11)" -dd "28/11/11"

	%1 -nt "dd (Task Due Date = 28/11/11 -> 17/10/13)" -dd "28/11/11"
	%1 -dd "17/10/13"

	%1 -nt "dd (Task Due Date = 28/11/11 + 5 days = 3/12/11)" -dd "28/11/11"
	%1 -dd +5

	%1 -nt "dd (Task Due Date = 4/11/11 - 9 days = 26/10/11)" -dd "4/11/11"
	%1 -dd -9

	%1 -nt "dd (Task Due Date = 28/12/11 + 5 days = 2/1/12)" -dd "28/12/11"
	%1 -dd +5

	%1 -nt "dd (Task Due Date = 2/1/11 - 9 days = 24/12/10)" -dd "2/1/11"
	%1 -dd -9

	%1 -nt "dd (Task Due Date = Today)" -dd "T"

	%1 -nt "dd (Task Due Date = Today + 10 days)" -dd "T+10"

	%1 -nt "dd (Task Due Date = Today + 10 days)" -dd "T+10D"

	%1 -nt "dd (Task Due Date = Today + 4 weeks)" -dd "T+4W"

	%1 -nt "dd (Task Due Date = Today + 2 months)" -dd "T+2M"

	%1 -nt "dd (Task Due Date = Today + 1 year)" -dd "T+1Y"

	%1 -nt "dd (Task Due Date = Today - 10 days)" -dd "T-10"

	%1 -nt "dd (Task Due Date = Today - 10 days)" -dd "T-10D"

	%1 -nt "dd (Task Due Date = Today - 4 weeks)" -dd "T-4W"

	%1 -nt "dd (Task Due Date = Today - 2 months)" -dd "T-2M"

	%1 -nt "dd (Task Due Date = Today - 1 year)" -dd "T-1Y"

REM: Task Due Time -------------------------------------------------------------------------

	%1 -nt "dt (Task Due Time)" -dt

REM: Task Completion Date ------------------------------------------------------------------

	%1 -nt "cd (Task Completion Date = 17/4/21)" -cd "17/4/21"

REM: Task Completion Time ------------------------------------------------------------------

	%1 -nt "ct (Task Completion Time = 9PM)" -ct 

REM: Task Creation Date --------------------------------------------------------------------

	%1 -nt "md (Task Creation Date = 24/2/78)" -md "24/2/78"

REM: Task % Completion ---------------------------------------------------------------------

	%1 -nt "pc (Task Completion = 53%)" -pc 53

	%1 -nt "pc (Task Completion = 53 + 8 = 71%)" -pc 53
	%1 -pc +8

	%1 -nt "pc (Task Completion = 53 - 6 = 47%)" -pc 53
	%1 -pc -6

REM: Task Version --------------------------------------------------------------------------

	%1 -nt "tv (Task Version = 0.1.2.3)" -tv "0.1.2.3"



