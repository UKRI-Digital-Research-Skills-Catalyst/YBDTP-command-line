#!/bin/bash
# Welcome to the csguide
# Author:	Jorge Buenabad-Chavez
# Date:		20210917
#
# basic colors and styles (underlined, bold, etc)
NO_COLOR="\e[0m"		# is default/white --  \e replaced \033
BLACK="\e[1;30m"
RED="\e[1;31m"
GREEN="\e[1;32m"
BROWN="\e[1;33m"
BLUE="\e[1;34m"
PURPLE="\e[1;35m"
CYAN="\e[1;36m"
GRAY="\e[1;37m"			# this and above are bold (thicker) type and some a bit brighter
COL1="\e[1;38m"			# white, so it seems the above are all the colours available.
COL2="\e[1;39m"			# white
COL3="\e[1;40m"			# white
LIGHT_BLACK="\e[0;30m"
LIGHT_RED="\e[0;31m"
LIGHT_GREEN="\e[0;32m"
LIGHT_BROWN="\e[0;33m"
LIGHT_BLUE="\e[0;34m"
LIGHT_PURPLE="\e[0;35m"
LIGHT_CYAN="\e[0;36m"
LIGHT_GRAY="\e[0;37m"

# my functions
quotes() {
    echo \"$1\"
}

colour() {
    # $1 is the colour/s and $2 is the text to colour 
    case $1 in
	# CHANGING TO BOLD COLORS
	black|bk)			echo "${BLACK}$2$NO_COLOR";;
	red|r)				echo "${RED}$2$NO_COLOR";;	
	green|g)			echo "${GREEN}$2$NO_COLOR";;	
	brown|b)			echo "${BROWN}$2$NO_COLOR";;
	blue|bl)			echo "${BLUE}$2$NO_COLOR";;	
	purple|p)			echo "${PURPLE}$2$NO_COLOR";;	
	cyan|c)				echo "${CYAN}$2$NO_COLOR";;
	white|w)			echo "`tput setaf 7``tput bold`$2`tput sgr0`";;
	# CHANGING TO LIGHT COLORS
	redlight|rl|lightred|lr)	echo "${LIGHT_RED}$2$NO_COLOR";;
	greenlight|gl|lightgreen|lg)	echo "${LIGHT_GREEN}$2$NO_COLOR";;
	brownlight|bl|lightbrown|lb)	echo "${LIGHT_BROWN}$2$NO_COLOR";;
	bluelight|bll|lightblue|lbl)	echo "${LIGHT_BLUE}$2$NO_COLOR";;
	purplelight|pl|lighpurple|lp)	echo "${LIGHT_PURPLE}$2$NO_COLOR";;	
	cyanlight|cl|lightcyan|lc)	echo "${LIGHT_CYAN}$2$NO_COLOR";;
	graylight|grl|lightgray|lgr)	echo "${LIGHT_GRAY}$2$NO_COLOR";;
	# CHANGING TEXT AND BACKGROUND COLOURS - from Natarajan 101
	# tput setab [1-7]: Set a background color using ANSI escape
	# tput setaf [1-7] - Set a foreground color using ANSI escape
	# see documentation at the end of tput text colours and modes
	# tput Color Capabilities:
	# • tput setab [1-7] - Set a background color using ANSI escape
	# • tput setb [1-7] - Set a background color
	# • tput setaf [1-7] - Set a foreground color using ANSI escape
	# • tput setf [1-7] - Set a foreground color
	# tput Text Mode Capabilities:
	# • tput bold - Set bold mode
	# • tput dim - turn on half-bright mode
	# • tput smul - begin underline mode
	# • tput rmul - exit underline mode
	# • tput rev - Turn on reverse mode
	# • tput smso - Enter standout mode (bold on rxvt)
	# • tput rmso - Exit standout mode
	# • tput sgr0 - Turn off all attributes
	# Color Code for tput:
	# • 0 – Black
	# • 1 – Red
	# • 2 - Green
	# • 3 - Yellow
	# • 4 - Blue
	# • 5 - Magenta    a kind of purple
	# • 6 – Cyan
	# • 7 - White
	whiteTextblueBackground|wtblb|textWhiteBackgroundBlue|twbbl)
	    echo "`tput setaf 7``tput setab 4`$2`tput sgr0`";;
	cyanTextBlackBackground|ctbkb|textCyanBackgroundBlack|tcbbk)
	    echo "`tput setaf 6``tput setab 0`$2`tput sgr0`";;
	whiteTextCyanBackground|wtcb|textWhiteBackgroundCyan|twbc)
	    echo "`tput setaf 7``tput setab 6`$2`tput sgr0`";;
 	blackTextMagentaBackground|bktmb|textBlackBackgroundMagenta|tbkbm)
	    echo "`tput setaf 0``tput setab 5`$2`tput sgr0`";;
 	whiteTextMagentaBackground|wtmb|textWhiteBackgroundMagenta|twbm)
	    echo "`tput setaf 7``tput setab 5`$2`tput sgr0`";;
	blackTextMagentaBackground|bktmb|textBlackBackgroundMagenta|tbkbm)
	    echo "`tput setaf 0``tput setab 5`$2`tput sgr0`";;
	blueTextWhiteBackground|bltwb|textBlueBackgroundWhite|tblbw)
	    echo "`tput setaf 4``tput setab 7`$2`tput sgr0`";;
	blackTextGreenBackground|btgb|textBlackBackgroundGreen|tbbg)
	    echo "`tput setaf 0``tput setab 2`$2`tput sgr0`";;
	redTextBoldBlackBackground|rtbbb|textRedBoldBackgroundBlack|trbbb)
	    echo "`tput setaf 1``tput setab 0``tput bold`$2`tput sgr0`";;
	greenTextBoldWhiteBackground|gtwb|textGreenBoldBackgroundWhite|tgbw)
	    echo "`tput setaf 2``tput setab 7``tput bold`$2`tput sgr0`";;
	blackTextBoldWhiteBackground|bktwb|textBlackBoldBackgroundWhite|tbkbw)
	    echo "`tput setaf 0``tput setab 7``tput bold`$2`tput sgr0`";;
	linkcolour|brownTextBlueBackground)
	    echo "`tput setaf 3``tput setab 4``tput bold`$2`tput sgr0`";;
	topiccolour)
	    echo "`tput setaf 7``tput setab 5`$2`tput sgr0`";;
	topiccolourbold)
	    echo "`tput setaf 3``tput setab 0``tput bold`$2`tput sgr0`";;
	*) echo "${RED}No right options to colour \"$1\" \"$2\"$NO_COLOR";;
    esac
}


#cli="${LIGHT_BROWN}CLI${NO_COLOR}"
cli=`colour lb CLI`
shell="${LIGHT_BROWN}shell${NO_COLOR}"
terminal="${LIGHT_BROWN}terminal${NO_COLOR}"
console="${LIGHT_BROWN}console${NO_COLOR}"
csenv="${LIGHT_BROWN}CSEnv${NO_COLOR}"
#guide="${LIGHT_CYAN}`tput smul`guide`tput rmul`${NO_COLOR}"
guide="${CYAN}guide${NO_COLOR}"
less="${LIGHT_GREEN}less${NO_COLOR}"
hyphenBlue="$BLUE——$NO_COLOR"		# ${hyphenBlue}
bullet="•"
section_COMMANDS="————————————————————————— `colour twbbl "C O M M A N D S   &   O U T P U T S"` ———— Comments" # not used anymore
   section_NOTES="——————————————————————————————————————— `colour twbbl "N O T E S"`"				# not used anymore
hyphensection="———————————————————————————————————————"  # ${hyphen2}
hyphenequals="`colour b =====`"		# ${hyphen2}
hyphen5="`colour b —————`"		# ${hyphen2}
hyphen2="——"				# ${hyphen2}
hyphen="—"				# ${hyphen}
newln="\n"				# ${newln}
enter="$GREEN↵$NO_COLOR"		# ${enter}
#prompthome="`colour lightgray csuser``colour lb @``colour lightgreen instance01cloud-span`:`colour lc \~` $"

#.todo before copying to instance: use this (instead of the two next lines): machinename=${HOSTNAME%.cloud-span.aws.york.ac.uk}
#hostname=instance01-gc.cloud-span.aws.york.ac.uk
#machinename=${hostname%.cloud-span.aws.york.ac.uk}
machinename=${HOSTNAME%.cloud-span.aws.york.ac.uk}
prompthome="`colour lightgray csuser``colour lb @``colour lightgreen $machinename`:`colour lc \~` $"
promptinshell_data="`colour lightgray csuser``colour lb @``colour lightgreen $machinename`:`colour lc \~/shell_data` $"
promptinsoftware="`colour lightgray csuser``colour lb @``colour lightgreen $machinename`:`colour lc \~/software` $"
promptinbin="`colour lightgray csuser``colour lb @``colour lightgreen $machinename`:`colour lc \~/bin` $"
# first versions - not dynamic
#promptinshell_data="`colour lightgray csuser``colour lb @``colour lightgreen instance01cloud-span`:`colour lc \~/shell_data` $"
#promptinsoftware="`colour lightgray csuser``colour lb @``colour lightgreen instance01cloud-span`:`colour lc \~/software` $"

newline() {
    printf "\n"
}

title_topic() {
  colour topiccolour "$1"
}

title_section() {
  colour lightgreen "$1"
}

title_example() {
    # colour b "$1 `colour cyan "$2"`"
    # called thus: $(title_example ===== "1. Find out what is in your home directory.")
    colour  cyan "$1"
}

title_COMMANDS() {
    echo "——————————————————————— `colour twbbl "C O M M A N D S   &   O U T P U T S"` —— `colour lb comments`" 
}

title_NOTES() {
    echo "————————————————————————————————————— `colour twbbl "N O T E S"`" 
}

#########################   TEXT TO DISPLAY .STARTS HERE - the -e option to echo enables interpretation of backslash escapes
echo -e "                   
		     	    ${LIGHT_BROWN}Cloud-SPAN Genomics Course Environment 
			     		    ($csenv)

This guide is a brief introduction to the organisation of $csenv and its use, under these topics:

t1. ${LIGHT_BROWN}Overview of $csenv: structure and software tools available.
t2. `colour lb "Introducing the Command Line Interface"` ($cli): components and overall operation.
t3. ${LIGHT_BROWN}Using $csenv: moving around and managing files.
t4. ${LIGHT_BROWN}Scripting${NO_COLOR}: tips and examples to help you get started.
t5. ${LIGHT_BROWN}Backup your work${NO_COLOR}: software and data.
t6. ${LIGHT_BROWN}Some Resources${NO_COLOR}: for you to go deeper into scripting.

Move around the guide by scrolling with the mouse or pressing the arrow keys or the following keys: 

${LIGHT_BROWN}Key/s${NO_COLOR}     ${LIGHT_BROWN}Effect${NO_COLOR}
 f     	  move forward one window  ${hyphen} pressing the Space Bar has the same effect        
 b        move backwards one window
 g        move to the beginning (first line)
 G        move to the end (last line)
 /text${enter}   search for `quotes text` and move to it ${hyphen} press the Enter key (${enter}) at the end	
 n        move to next ocurrence of `quotes text` ${hyphen} after you have searched for `quotes text` 
 N        move to previous ocurrence of `quotes text` ${hyphen} after you have searched for `quotes text` 
 h        get Help on other commands ${hyphen} quit the help menu by pressing the q key
 q        Quit (exit) the guide 


		 Topic 1. $(title_topic "Overview of CSEnv: structure and software tools available")

$csenv is a Linux (Ubuntu 20.04) virtual machine (VM) running on Amazon Web Services (AWS). It is an instance (a copy) of the Amazon Machine Image (AMI) configured with 'omics data and software analysis tools for the Cloud-SPAN Genomics course. Participants of the course have, each, exclusive access to an instance of $csenv for the span of the course only. Hence, you may be interested in making your own instance from that AMI image and/or backing up your software $hyphen see `quotes "Backup your your"`.

  As a Linux machine, $csenv benefits from many software tools readily available, most of them free and open. But perhaps more relevant to the aim of the course: software tools in Linux can easily be combined into workflows which are the basis to automate long-run, multiple-step tasks. How to combine software tools is presented below (in Scripting). Please note that `colour greenlight "software tools"` are also known as `colour greenlight programs` and `colour greenlight applications` and the three terms are used interchangeably in this guide. 

  The Linux file system is structured/organised around directories (folders) which, conceptually, are files that contain files or other directories. Technically, directories contain the `colour greenlight "information necessary to access"` other files or other directories. Proper files are (not directories but) documents, programs, photos, videos, etc. The highest level directory in linux is called `quotes root` and is represented by a slash `colour brown /`. The root directory contains these directories and files:

`colour lightbrown "bin   dev  home"`        `colour redTextBoldBlackBackground initrd.img.old`  `colour lb "lib32  lost+found  mnt  proc  run   snap  sys  usr"`  `colour lc vmlinuz`
`colour lb "boot  etc"`  `colour lc initrd.img`  `colour lb "lib             lib64  media       opt  root  sbin  srv"`   `colour btgb tmp`  `colour lightbrown var`  `colour trbbb vmlinuz.old`

  Directory names are shown in `colour lb brown`. Names in `colour lc cyan` are `colour lg links` that point to either a file or a directory $hyphen links are very useful as we'll see later. Links in `colour trbbb red` are unresolved: the files they point to no longer exist $hyphen but don't worry, the unresolved links above became so when we updated $csenv to Ubuntu 20.04, which no longer handles those links in the root directory but in the `colour lb boot` directory. The black text and green background for the `colour btgb tmp` directory mean that any user including you can create and write (modify) files and directories within the `colour btgb tmp` directory.

  `colour bltwb " NB "` when you create, delete or modify a file, the information about the file (name, size, etc.) in the directory that contains the file is also created, deleted or modified.  

  It is beyond the scope of this guide to even try to summarise what is in each directory in the root directory. Please visit this link for a good discussion of the role and content of each directory: 
  `colour linkcolour https://www.howtogeek.com/117435/htg-explains-the-linux-directory-structure-explained/`


  $(title_section "Your Home Directory")

Within the Linux file structure, every user including you has a `colour lg "home directory"` wherein you can create files and directories that will exist until you explicitly delete them or while your $csenv exist. For all practical purposes, you have exclusive access to your home directory and its content (files and directories therein) but you can share some content with other users as needed.

  The name of your home directory is `colour lb /home/csuser`

  The name of a file in the Linux file system is unique and comprises the full location, better known as the full `colour lg path`, within the file hierarchical structure which starts at the root directory `colour brown /`. So, your home directory is `colour lb csuser` (as your login username) and is locatd within the `colour lb home` directory which is in turn located within the root directory `colour brown /`.  

  `colour bltwb " NB "` the slash `colour brown /` is used both to represent the root directory, when used at the beginning of a full path, and to separate directory names within a full path. 
  `colour white "NOTE ALSO"` that, in Windows systems, the inverted slash `colour brown '\\\'` plays only the second role of separating directory names in a full path.

  You rarely have to specify the full path of a file or directory, which is most convenient, because you will mostly use paths relative to your home directory as we will see later. 


  $(title_section "Genomics-related Applications in $csenv")

  As mentioned above, $csenv benefits from many software tools readily available in Linux. We will discuss some of them in the following topics. We close this topic with a brief description of the sotware tools for the analysis of 'omics data that are readily available in $csenv: 

SOFTWARE        VERSION		DESCRIPTION
———————————————————————————————————————————
- fastqc        0.11.9		Quality control tool for high throughput sequence data.
- trimmomatic	0.39		A flexible read trimming tool for Illumina NGS data.
- bwa 		0.7.17-r1188	Mapping DNA sequences against reference genome.
- samtools	1.13		Visualization and interactive exploration of large genomics datasets.
- bcftools	1.14-3		Utilities for variant calling and manipulating VCFs and BCFs.
- cutadapt	3.5		Similar to bcftools




	Topic 2. $(title_topic "Introducing the Command Line Interface (CLI): components and overall operation")

The command line interface ($cli) is a means for you to interact with Linux: both for you to instruct Linux the operations you want to be performed, such as running a program or copying or deleting a file, and for you to visualise the results of the operations that you instruct.
    
   A $cli is made up of four main components: (1) a `colour lg text-only` display or screen like the one wherein you are reading this guide; (2) the keyboard through which you enter commands (instructions) or data or both; (3) a prompt that indicates that the $cli is ready for you to enter another command; and (4) the $cli program itself that, iteratively, reads a command you enter, performs the command, displays the results on the screen if any (results may be written to a file), and again displays the prompt and waits for another command.

   This is the $cli prompt of your $csenv instance:

$prompthome
 
   It is formed of: the username `colour lightgray csuser`, the symbol `colour lb @`, the machine id `colour lightgreen $machinename`, the character :, the current directory `colour lc \~` and the character $.  Prompts are configurable (as we will see later)
 
   You enter commands after the dollar sign ($: the end of the prompt) and then press the Enter key ($enter). The $cli program will then run the command you entered (if it exists). 
   For example, when you entered `quotes csguide` to read this guide, like so:

$prompthome csguide$enter

   you instructed the $cli to run the program `quotes csguide` which, in turn, ran the `quotes less` program to display the file with this content you are reading. That is, right now you are within the `quotes less` program, moving around this guide by typing in `quotes less` commands. Once you press the key `quotes q`, you will exit `quotes less` and go back to the $cli which, as mentioned above, will again display its prompt for you to enter another command.

  For your information:

  $bullet The $cli screen displays both inputs and outputs. `colour lg Inputs` are anything you type in with the keyboard, either a command for the $cli or some data for a program (e.g., less). You can `colour lg "use the mouse to copy and paste"` some text which may be used as input, but you cannot double click (somewhere) to run a program as is typical of Windows and MacOS graphical user interfaces (GUIs) $hyphen though there are Linux GUIs like GNOME. `colour lg Outputs` is anything that the $cli or a program displays in the screen and includes results, prompts, and errors. The displaying of this guide is the `quotes results` of running the `quotes less` program. The `quotes less` prompt is a colon `colour lb :` on the bottom left. If you try to run a command that does not exist, the $cli will display the error `quotes " ..: command not found"`.

  $bullet The $cli is also widely known both as the $shell, the $terminal and the $console. The term $cli emphasises the way you interact with Linux: by entering plain-text commands that specify the operations you want to be performed. Most commands are one-line commnands but multiple-line commands are possible too as we will see.  The term $shell emphasises the role of the $cli as a communication layer, between the user and Linux services, that serves to invoke (run) those services on the user's behalf. For example, when you entered the command `quotes "..$ csguide$enter"`, the $shell requested from Linux to create a process to run (execute the code of) the `quotes csguide` program (and likewise, `quotes csguide` asked Linux to create a process to run the code of the `quotes less` program) and  pass it control. The terms $terminal and $console emphasise the text-based characteristics used to display inputs and outputs, as did the terminals of the 1970s $hyphen$hyphen no fine-grain pixels can be managed throughout the screen, as in Graphical User Interfaces (GUIs), and hence no figures can be displayed. Actually, it is a character-based screen, as it is possible to display some special characters such as the bullet $bullet and others.

  $bullet The $cli is much more powerful than a GUI because it allows you (1) to access all the options of each program, and (2) you can make scripts, which are Bash programs that run other programs including Bash programs! GUIs usually offer only the most common options of a program and in general are not programmable. On the other hand, the $cli is somewhat more difficult to use in the beginning because you must first get acquainted with what each program does, its options and parameters, and with scripting which, basically, is computer programming. However, once you get familiar with all these, automating your tasks is not only fun but also very rewarding, and your work will be many times more efficient.    

  $bullet You are using the `colour lg Bash` shell whose name stands for Bourne Again SHell. There are other shells: Korn shell, C shell, etc. Bash shell is the most widely used and is the default shell in Linux. 

		    Topic 3. $(title_topic "Using CSEnv: moving around and managing files")

This section shows how to run $shell commands in $csenv to help you get acquainted with the organisation of $csenv, how to move around it, and how to create and manage files and directories. 

  This is a hands-on section: run the commands we show below as you read along. For this purpose, connect to your instance twice, so that you will have two terminals connected to $csenv, one to continue reading this guide and another to enter the commands in the examples below. 

  Please open another terminal in your local machine (or if you are in Windows, run Git Bash again), and then login to $csenv within the newly opened terminal (exactly as you logged in in the first terminal with ssh: `quotes "ssh -i ... csuser@..york.ac.uk"`).

  You can `colour gl "switch between the two terminals"` by pressing Alt-Tab, that is: pressing simultaneously the Alt key and the Tab key. 

  This is how each example of using $shell commands is presented below:
  $hyphen A few sentences of motivation for the example commands.
  $hyphen The running of the shell commands and their outputs $hyphen and sometimes comments starting with a hash #.
  $hyphen Notes on various aspects related to the commands presented to round up your knowledge of the $shell.

  Example:
$(title_example "Example 0. Motivation: Find out who is using your instance.") Please type the following command:

  $(title_COMMANDS "-- COMMANDS & OUTPUTS -- comments")
$prompthome who                                     # this is a comment, don't type this
csuser   pts/0        2022-02-24 22:11 (92.0.28.88)              # output of who, 2 lines
csuser   pts/1        2022-02-24 22:12 (92.0.28.88)
  $(title_NOTES "----------------------")
$bullet The command 'who' shows who is logged on, when they logged on, and from which Internet address. 
$bullet Your output should show two lines as above if you have opened two terminals as suggested.
$bullet The type of terminal being used is termed 'pts', which stands for PseudoTerminal Slave device.

  `colour bltwb " NB "`
  $hyphen we are not showing the Enter $enter key after each command anymore for readability, but please 
    press it after each command you are asked to type in. 

  $hyphen you only need to type what is shown after the $shell prompt (after $) but not the comment (if any) 
    which starts with a hash # and continues til the end of line. 
    Thus, to follow the example above you would only type 'who' (with no quotes) and press Enter 
    in your terminal.

  $(title_section "Moving around $csenv")

$(title_example "Example 1. Find out what is in your home directory.") Please type the following commands (cd, pwd, ls):

  $(title_COMMANDS "-- COMMANDS & OUTPUTS -- comments")
                       $ cd                                      # no output of cd, but see next example
$prompthome pwd
/home/csuser                                                     # output of pwd
$prompthome ls
`colour lb "bin  shell_data  software"`                                        # output of ls
  $(title_NOTES "----------------------")
$bullet The command 'cd' (Change Directory) with no arguments moves you to your home directory. 
$bullet The command 'pwd' (Print Working Directory) prints your `quotes "working directory"` (aka 
  `quotes "current directory"`) which is your home directory, /home/csuser, because you have just moved there.
$bullet The command 'ls' (LiSt) with no arguments lists the files and directories in your current directory 
  (currently your home directory). 
  Your home directory has these three directories: bin, shell_data, and software.
  $hyphen `colour lb bin` stands for binaries, another name for programs you can run. The bin directory has a few 
    programs you may find useful $hyphen2 we'll look at them later. 
  $hyphen the directory `colour lb shell_data` contains 'omics data to be analyed during the course.
  $hyphen the directory `colour lb software` contains software packages the Cloud-SPAN team installed.  

$(title_example "Example 2. The prompt always shows your current directory.") Please type the following commands:

  $(title_COMMANDS "-- COMMANDS & OUTPUTS -- comments")
$prompthome echo This is my home directory ~
This is my home directory /home/csuser
$prompthome cd software
$promptinsoftware pwd
/home/csuser/software
  $(title_NOTES "----------------------")
$bullet The command 'echo' displays what follows it, replacing variable names with their value.
$bullet The character ~ is a $shell variable that is set to the value of your home directory when you login.
  You can see in the output of 'echo' that ~ has been replaced with /home/csuser
$bullet The command 'cd software' moves you to the software directory, changing both your current 
  directory and the prompt which now shows `colour lc \~/software`, just before the $ symbol, as 
  the current directory.
$bullet The command 'pwd' now shows /home/csuser/software as the current directory.
$bullet Although 'cd' does not print any output in a new line, the prompt is changed accordingly. 

$(title_example "Example 3. What is the file structure of your home directory?") Please type the following command:

  $(title_COMMANDS "-- COMMANDS & OUTPUTS -- comments")
$promptinsoftware tree -L 1
`colour lb .`
├── `colour lb bcftools`
├── `colour lb htslib`
└── Miniconda3-latest-Linux-x86_64.sh

2 directories, 1 file
  $(title_NOTES "----------------------")
$bullet The command 'tree -L 1' displays the hierarchical organisation of the file system from the 
  current directory downwards 1 level.
$bullet '-L 1' is an option to 'tree' that specifies how many levels downwards should be printed.
  If no levels are specified, 'tree' will print all levels down. Try it: type 'tree' only.
$bullet No argument was given to 'tree', so 'tree' assumed the current directory `colour lc \~/software`
  as the starting point to display the hierarchy, showing two directories (in `colour lb brown`) and 1 file.
$bullet The current directory is shown at the top of the output as a single (brown) dot: `colour lb .`
$bullet A dot . is an alias for (represents) the current directory. 
$bullet Two dots .. are an alias for the parent directory of the directory.  
$bullet Every directory has these two aliases whose purpose is to facilitate moving around the file system 
  hierarchy. You can see them if you type 'ls -a'. Try it.  
  The option '-a' to 'ls' stands for `quotes "all: do not ignore entries starting with a dot ."`.

  As we want to know the structure of the home directory (not the current directory ~/software), please 
type the following command which prints 2 levels downwards starting on the parent directory (..). 

  $(title_COMMANDS "-- COMMANDS & OUTPUTS -- comments")
$promptinsoftware tree -L 2 ..
`colour lb ..`
├── `colour lb bin` 
│   ├── `colour c bcftools` -> `colour lg /home/csuser/software/bcftools/bcftools`
│   ├── `colour lg clean`
│   ├── `colour lg csguide`
│   ├── csguidecontent.txt
│   ├── `colour lg csguideeditnprint.sh`
│   ├── `colour c csguide.sh` -> `colour lg csguide`
│   ├── `colour lg findstr`
│   ├── `colour lg lssr`
│   ├── `colour lg textcolorsandstyles.sh`
│   └── `colour c vcfutils.pl` -> `colour lg /home/csuser/software/bcftools/misc/vcfutils.pl`
├── `colour lb shell_data`
│   ├── `colour lb sra_metadata`
│   └── `colour lb untrimmed_fastq`
└── `colour lb software`
    ├── `colour lb bcftools`
    ├── `colour lb htslib`
    └── Miniconda3-latest-Linux-x86_64.sh

7 directories, 11 files
  $(title_NOTES "----------------------")
$bullet In the last command (`quotes "tree -L 2 .."`), the parent directory .. is an argument to the command 'tree' 
  that (1) specifies the starting point of the file structure to be displayed and (2) is displayed 
  at the top of the output.  We know the parent directory in this case is the home directory and 
  hence could have typed `quotes "tree -L 2 ~"` (instead of `quotes "tree -L 2 .."`) to get the same output except 
  that `colour lb /home/csuser` would be displayed at the top of the output. Try it please.

            `colour twbm "Digression on options and arguments to commands:"`
            $hyphen Most options to commands start with one or two hyphens - or -- followed by a letter 
              or a word and possibly a value.
            $hyphen Most arguments to commands are names to files (data, programs, etc.) or directories. 
            $hyphen `colour lr AVOID` names for files and directories that start with a hyphen, for example: -hola.txt
              It may confuse the $shell and some commands will not work properly.

$bullet The output shows in the first level the 3 directories we saw before (bin, shell_data and software). 
  There are four directories in the second level: sra_metadata, untrimmed_fastq, etc.
$bullet The files in `colour lg green` within the `colour lb bin` directory are programs/commands you can run.
$bullet You are running the `quotes csguide` which is the third program from the top.
$bullet The files in `colour c cyan` are links to other files, to the files whose name appears to the right of the 
  arrow symbol `quotes -\>` in the same line. Links are like aliases and are useful in many contexts.
  We will will discuss them later in the context of linking (pointing to) programs as above. 
$bullet The files in white contain simple text and are not runnable.

$(title_example "Example 4. How to create, copy and delete files and directories.") At some point in your work you will want or need to make a copy of your data in order to explore `quotes "something new"` without jeopardising your original data. With the commands below we are going to:
$hyphen create a new directory in your home directory 
$hyphen copy some files into the new directory
$hyphen looking at and processing the contents of copied files
$hyphen deleting files and directories 

  $(title_COMMANDS "-- COMMANDS & OUTPUTS -- comments") 
$promptinsoftware cd				 # go back to your home directory
$prompthome ls				     	 # check its content again!
`colour lb "bin  shell_data  software"`
$prompthome mkdir tmp      			 # create the tmp (temporary) directory
$prompthome ls				     	 # check tmp has been created
`colour lb "bin  shell_data  software  tmp"`
$prompthome cp shell_data tmp			 # copy directory shell_data to tmp
cp: -r not specified; omitting directory 'shell_data'		 # `colour lr ERROR` 
$prompthome cp -r shell_data tmp			 # try again with option -r
$prompthome					 # no output: `colour lg SUCCESS`
  $(title_NOTES "----------------------")
$bullet The command 'mkdir' (MaKe DIRectory) creates a new directory. You must provide 'mkdir' the name of the directory to create as an argument. You can create two or more directories in one go, just provide the names one after the other, thus: 'mkdir t1 t2 t3'.

$bullet The command 'cp' (CoPy) copies files and directories. The syntax is 'cp sourcefile targefile', meaning that a copy of sourcefile (1st argument) is to be made with the name targetfile (2nd argument). Thus the copy goes from LEFT to RIGHT, as the writing of English goes.

$bullet The reason for the ERROR `quotes "omitting directory 'shell_data'"` is that 'cp' was designed to copy regular files only, unless the user explicitly specifies that directories (and files within) be copied as well with the option '-r', which stands for `quotes "recursive copy"`. That means to repeatedly apply the copy operation on files within directories, within directories, and so on until no directories are found. 

$bullet Our comment `quotes "no output: SUCCESS"` means that, unless the purpose of a command is to print something, like the current directory ('pwd') or a list of files ('ls'), the command will not print anything unless something goes wrong. For this behaviour $shell commands are said to be `quotes silent`. 

$bullet It is good practice to use 'ls' repeateadly as shown above, so that you can check (1) that you are working in the directory you mean to be working, and (2) that things are progressing as you intend. You don't want to issue a few commands in a row, including perhaps deleting files, just to find out you did it in the wrong place. For example, suppose you want to make a new copy of file f1 onto f2, that is: 'cp f1 f2'. If (for any reason) both files exist, then 'cp' will overwrite (delete) f2 with no warning whatsoever, silently, because, by design, 'cp' works thus. If overwriting f2 was what you meant, fine. But if not, you could have avoided losing f2 by checking with 'ls' what files were in your current directory. 
  
$(title_example "Example 5. Let's do the previous example more quickly using the 'Tab' key.")
 
		  Topic 4. $(title_topic "Scripting: tips and examples to help you get started")

		        Topic 5. $(title_topic "Backup your work: software and data")

		  Topic 6. $(title_topic "Some Resources: for you to go deeper into scripting")
"
###### this double quote is the closing quote of the csguide
exit 0

