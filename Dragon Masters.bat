@echo off
:title
mode con: cols=76 lines=35
setlocal EnableDelayedExpansion
setlocal 
::Title Screen
title Dragon Masters
echo           *******                                                    
echo          /**////**                    *****                          
echo          /**    /** ******  ******   **///**  ******  *******        
echo          /**    /**//**//* //////** /**  /** **////**//**///**       
echo          /**    /** /** /   ******* //******/**   /** /**  /**       
echo          /**    **  /**    **////**  /////**/**   /** /**  /**       
echo          /*******  /***   //********  ***** //******  ***  /**       
echo          ///////   ///     ////////  /////   //////  ///   //        
echo        ****     ****                     **                         
echo      /**/**   **/**                    /**                         
echo      /**//** ** /**  ******    ****** ******  *****  ******  ******
echo      /** //***  /** //////**  **//// ///**/  **///**//**//* **//// 
echo      /**  //*   /**  ******* //*****   /**  /******* /** / //***** 
echo      /**   /    /** **////**  /////**  /**  /**////  /**    /////**
echo      /**        /**//******** ******   //** //******/***    ****** 
echo      //         //  //////// //////     //   ////// ///    //////  
echo.
echo                              Choose a Number
echo.
echo                        1. New Game
echo                        2. !Continue!
echo                        3. Settings
echo.
set InvC=0
set invert=.
::Start Continue and Settings
set /p num=
if %num%==1 (goto :Newgame)
if %num%==3 (goto :TitleSettings)
if %num%==2 (
	if !Continue!==Continue goto choice2
	goto title
)
:Newgame
REM \/Some variables to set the money and level of the dragon\/
set /a money=20
set /a level=0
set /a dh=20
set /a dhl=0
set /a PotionH=0
set /a Sp=35
set /a Hp=5
set /a Ap=35
set /a Ab=50
set /a Hu=35
set /a HpCount=0
@cls
echo NEW GAME
echo --------------------------------------------------------------------
echo.
echo Name: 
echo Occupation: 
echo Enter your name:
set /p name=
@cls
:Occupation
echo NEW GAME
echo ----------------------------------------------------------------------------
echo.
echo Name: !name!
echo Occupation: 
echo What will you be?
echo.
echo 1. Elf (Has a bow, 5 extra dmg,  has a chance to miss)
echo 2. Wizard (can use magic, 10 extra dmg,1 in 6 chance to use the wrong spell)
echo 3. Dwarf (has a higher chance for an enemy to miss, Weapon does half damage)
echo 4. Just a random guy (no special effects)
set /p occ=
@cls
if %occ%==1 (goto :Elf)
if %occ%==2 (goto :Warlock)
if %occ%==3 (goto :Viking)
if %occ%==4 (goto :Human)
echo [ERROR] NUMBER WASN'T ON LIST
goto :Occupation
::\/Sets the character stats of the player\/
REM ----------------------------------------------
:Elf
set Occupation=Elf
set /a Health=103
set /a DMGHealth=103
set /a Armour=2
set /a DMG=15
set /a AGI=1
set /a RanChance=10
goto :MakeSure
REM ----------------------------------------------
:Warlock
set Occupation=Wizard
set /a Health=104
set /a DMGHealth=104
set /a Armour=0
set /a DMG=20
set /a AGI=0

set /a RanChance=8
goto :MakeSure
REM ----------------------------------------------
:Viking
set Occupation=Dwarf
set /a Health=105
set /a DMGHealth=105
set /a Armour=1
set /a DMG=5
set /a AGI=2
goto :MakeSure
REM ----------------------------------------------
:Human
set Occupation=Random Dude
set /a Health=100
set /a DMGHealth=100
set /a Armour=2
set /a DMG=10
set /a AGI=0
goto :MakeSure
REM ----------------------------------------------
:MakeSure
echo NEW GAME
echo --------------------------------------------------------------------
echo.
echo Name: !name!
echo Occupation: !Occupation!
echo is this correct?
echo 1. Yes
echo 2. No
set /p correct=
if %correct%==1 (goto :GameStart)
if %correct%==2 (goto :Newgame)
@cls
echo [ERROR] NOT A NUMBER
goto :MakeSure
::START OF THE GAME!!
:GameStart
mode con: cols=100 lines=35
echo ====================================================================================================
echo {}                             ]           ]               [           [                          {}
echo {}                             ]           ]               [           [                          {}
echo {}                             ]           ]               [           [                          {}
echo {}                             ]  ________ ]_______________[           [                          {}
echo {}                             ]   -------'/               \           [                          {}
echo {}                             ]    [SHOP]/                 _          [                          {}
echo {}                             ]    /[   /                 { }         [                          {}
echo {}                             ]   / [  /                 -   -        [              __          {}
echo {}    ____________________     ]  ][ [ /                 [ [ ] ]       [           __/  \__       {}
echo {}   /____________________\    ]  ][ [/                   [ - ] \      [     _____/        \_____ {}
echo {}    []     /_\        []     ]  ][ /                    [   ]  \     [    /____________________\{}
echo {}    []     { }        []     ]  ][/                         ]   \    [     []    _{ }_       [] {}
echo {}    []____-___-__.Oo__[]     ]   /                               \   [     []   ] [ ] [      [] {}
echo {}    []----------------[]     ]  /                                 \  [     []----------------[] {}
echo {}    []     PRODUCE    []     ] /                                   \ [     []    POTIONS     [] {}
echo {}....[]................[].....]/                                     \[.....[]................[].{}
echo ====================================================================================================
echo {}    A Town, Bussiling and Humming to the tunes of the ages. Simple in most ways, Other ways...  {}
echo {}    Well lets face it. The Town was prone to being attacked by dragons.                         {}
echo ====================================================================================================
pause
REM \/ This see's what character the player picked. Showing the character \/
if !occ!==1 (goto :ElfShow)
if !occ!==2 (goto :WizardShow)
if !occ!==3 (goto :DwarfShow)
if !occ!==4 (goto :HumanShow)
REM -----------------------------------------------------------------------------------------------------
:ElfShow
@cls
echo ====================================================================================================
echo {}                            {}              ..  ..                {}                            {}
echo {}                            {}            .'  ;/  ''.             {}                            {}
echo {}                            {}           ],.';./''., ;            {}                            {}
echo {}                            {}           ;'         ;7            {}                            {}
echo {}                            {}           ;          ;;            {}                            {}
echo {}                            {}         __ '.      .''\\           {}                            {}
echo {}                            {}       .'  ''-:]''[:.]-.\\          {}                            {}
echo {}                            {}      ;       \     /    ]]         {}                            {}
echo {}                            {}     ;    '   ] \   ]\    \\        {}                            {}
echo {}                            {}    .    ; ;   \ }  ] }  ; };;      {}                            {}
echo {}                            {}   ;    ;  ;  ]    / ; ;   [;;      {}                            {}
echo {}                            {}   '.  '..  :.]    ] ; ;  ///       {}                            {}
echo {}                            {}     '.   '''';_   ] ; \: //        {}                            {}
echo {}                            {}       ',.__.;  """"-;   \'         {}                            {}
echo {}                            {}        '             ;             {}                            {}
echo {}                            {}       ;,             ;             {}                            {}
echo {}                            {}         ;"";---..,..,"             {}                            {}
echo ====================================================================================================
echo            You, The Dragon Master !name!. Protector of the town. The Power of the Bowsmen er...
echo            Women.. Passed down through the many Generations. Ready to Fight Any and Everything 
echo ====================================================================================================
pause
goto :ScaredWoman
REM -----------------------------------------------------------------------------------------------------
:WizardShow
@cls
echo ====================================================================================================
echo {}                            {}                  / [               {}                            {}
echo {}                            {}                .'   ;              {}                            {}
echo {}                            {}             .-'      ;             {}                            {}
echo {}                            {}  .--.      ':-------;'             {}                            {}
echo {}                            {} /.''.\     ;         ;             {}                            {}
echo {}                            {} [[  []     ';-,--,--;'             {}                            {}
echo {}                            {} \.::[]  .---'; ""  ;'---.          {}                            {}
echo {}                            {}     []  ;     ;   ;      ;         {}                            {}
echo {}                            {}     []  ;   ;  ;_;   ;   ;         {}                            {}
echo {}                            {}     []  ;   ; ; ;    ;   ;         {}                            {}
echo {}                            {}    {[{  ;   ; ; ;    ;   ;         {}                            {}
echo {}                            {}    {\]""    ; ; ;    ;  .'         {}                            {}
echo {}                            {}     \]..--'.,,;,;,,,,;.''          {}                            {}
echo {}                            {}     []     .;--------;.            {}                            {}
echo {}                            {}     []    ;   ; ;      ;           {}                            {}
echo {}                            {}     []    ;   ; ;      ;           {}                            {}
echo {}                            {}     []    ;    ; ;     ;           {}                            {}
echo ====================================================================================================
echo           You, The Dragon Master !name!. Protector of the town. The Power of Magic and Wizardry
echo           Through your Many Studies and Investments. Ready to Protect Your People from anything
echo ====================================================================================================
pause
goto :ScaredWoman
REM -----------------------------------------------------------------------------------------------------
:DwarfShow
@cls
echo ====================================================================================================
echo {}                            {}                                    {}                            {}
echo {}                            {}                          .------.  {}                            {}
echo {}                            {}                          \      /  {}                            {}
echo {}                            {}                           \    /   {}                            {}
echo {}                            {}    =}}}================={{{=====   {}                            {}
echo {}                            {}    ;  ;                 ; /    \   {}                            {}
echo {}                            {}    ;  ; ^|\ ,-""""-,  /^|; /      \  {}                            {}
echo {}                            {}    ;  ; \\;        ;//  ;'------'  {}                            {}
echo {}                            {}    ;  ;  ';...  ...;'   ;  ;       {}                            {}
echo {}                            {}    ;   ;  ;  ;..;  ;   ;   ;       {}                            {}
echo {}                            {}    ;   ;   ;.----.;    ;   ;       {}                            {}
echo {}                            {}    ;   '---.;    ; ---.'   ;       {}                            {}
echo {}                            {}    ^\.        ;==; //     ./        {}                            {}
echo {}                            {}      '''';    ;; // ;''''          {}                            {}
echo {}                            {}          ;    ''//  ;              {}                            {}
echo {}                            {}          ;     //   ;              {}                            {}
echo ====================================================================================================
echo           You, The Dragon Master !name!. Protector of the town. The Power of...    being short.   
echo           Able to Duck and weave through attacks and protect the town                          
echo ====================================================================================================
pause
goto :ScaredWoman
REM -----------------------------------------------------------------------------------------------------
:HumanShow
@cls
echo ====================================================================================================
echo {}                            {}                                    {}                            {}
echo {}                            {}                                    {}                            {}
echo {}                            {}              ,_..._,               {}                            {}
echo {}                            {}            .'       '.             {}                            {}
echo {}                            {}            ;         ;             {}                            {}
echo {}                            {}            ;         ;             {}                            {}
echo {}                            {}             '._,,,_.'              {}                            {}
echo {}                            {}   ___^|\  .'''--] [--'''.  /^|___    {}                            {}
echo {}                            {}   \__  \;__.   ;_;   .__;/  __/    {}                            {}
echo {}                            {}      \  ;  ;   ; ;   ;  ;  /       {}                            {}
echo {}                            {}       \   /;   ; ;   ;\   /        {}                            {}
echo {}                            {}        \,/ ;   ; ;   ; \,/         {}                            {}
echo {}                            {}            ;___;_;___;             {}                            {}
echo {}                            {}            ;---------;             {}                            {}
echo {}                            {}            ;    .    ;             {}                            {}
echo {}                            {}            ;   [ ]   ;             {}                            {}
echo {}                            {}            ;   [ ]   ;             {}                            {}
echo ====================================================================================================
echo    You... are the Dragon Master? !name!... was it? You were chosen by the people of the town
echo    to protect Them from Dangerous beasts. They must of Really Hated you.
echo ====================================================================================================
pause
goto :ScaredWoman

:ScaredWoman
@cls
echo ====================================================================================================
echo {}                                                                                                {}
echo {}                                                                                                {}
echo {}                                        ##        ,_..._,                                       {}
echo {}                                        ##      .:___,   '.                                     {}
echo {}                                        ##      ; --, '\  ;                                     {}
echo {}                                        ## .III / ""  9;  '.III.                                {}
echo {}                                           \  / ',O   ;.   ;\  /                                {}
echo {}                                        ##  ] [  `----'';  ;] [                                 {}
echo {}                                        ##   \ \ ;    \; '.'] [                                 {}
echo {}                                              \ {      \___/  /                                 {}
echo {}                                               "";   \      /                                   {}
echo {}                                                 ;    ";---""                                   {}
echo {}                                                 ;     ;                                        {}
echo {}                                                 ;     ;   ,,__                                 {}
echo {}                                                ;   .  '.'' [ ^<                                 {}
echo {}                                               ;   ; ;   ..'[_]                                 {}
echo {}                                              ;   ;   '''                                       {}
echo ====================================================================================================
echo   A Local Woman Suddenly Ran into the town, Heaving and out of breath. "a dragon... A DRAGON IS
echo   COMMING" She screamed. The whole town is is shock and turning into panic. "We need to get
echo   !name! right AWAY."
echo ====================================================================================================
pause
@cls
REM ###################################################################################################################--MENU
:choice2
set BF-Text=What would You like to do... !name!?
mode con: cols=100 lines=35
set Me=0
:BF-Choice2
@cls
echo ====================================================================================================
echo {}                             ]           ]               [           [      {}  HP-!DMGHealth!/!Health!
echo {}                             ]           ]               [           [      {}  ARM-!Armour!
echo {}                             ]           ]               [           [      {}  $!money!
echo {}                             ]  ________ ]_______________[           [      {}=================={}
echo {}                             ]   -------'/               \           [                          {}
echo {}                             ]    [SHOP]/                 _          [                          {}
echo {}                             ]    /[   /                 { }         [                          {}
echo {}                             ]   / [  /                 -   -        [              __          {}
echo {}    ____________________     ]  ][ [ /                 [ [ ] ]       [           __/  \__       {}
echo {}   /____________________\    ]  ][ [/                   [ - ] \      [     _____/        \_____ {}
echo {}    []     /_\        []     ]  ][ /                    [   ]  \     [    /____________________\{}
echo {}    []     { }        []     ]  ][/                         ]   \    [     []    _{ }_       [] {}
echo {}    []____-___-__.Oo__[]     ]   /                               \   [     []   ] [ ] [      [] {}
echo {}    []----------------[]     ]  /                                 \  [     []----------------[] {}
echo {}    []     PRODUCE    []     ] /                                   \ [     []    POTIONS     [] {}
echo {}....[]................[].....]/                                     \[.....[]................[].{}
echo ====================================================================================================
echo    !BF-Text!                                    
echo.  
echo    1. Go Forth and Fight    3. Items
echo    2. Go to the Shop        4. Settings
echo.   
echo ====================================================================================================
set /p fight=
if !fight!==1 (goto :fight)
if !fight!==2 (goto :shop)
if !fight!==3 (goto :BF-Items)
if !fight!==4 (goto :GameSettings)
@cls
echo That wasn't a choice!
goto choice2
rem ###############################################################################################################################################---SHOP
rem \/ The Shop GUI and code for purchases \/
:shop
set storetext=Howdy mate! What would you like to get?
:buyagain
echo !HpCount!
@cls
echo !HpCount!
echo ====================================================================================================
echo {}                                                                      [                         {}
echo {}                                           .'''''.                    [                         {}
echo {}                                         .'       '.                  [        Rob Shop         {}
echo {}                                        /           \                 [                         {}
echo {}                                       /_____________\                [    (Please don't, my    {}
echo {}                                        ;           ;                 [     name's Just Rob)    {}
echo {}                                        ;           ;                 [                         {}
echo {}                                        '\         /'    .            [========================={}
echo {}          .".                             ""-----""     ; \___        [  HP-!DMGHealth!/!Health!  ARM-!Armour!
echo {}         [ " ]                        ."""--[   ]--""". ;  __/        [========================={}
echo {}         [___]                       :   .        .   '  /            [         $!money!
echo {}================================================================================================{}
echo {}                                                                                                {}
echo {}                                                                                                {}
echo {}================================================================================================{}
echo {}                                                                                                {}
echo {}/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\{}
echo ====================================================================================================
echo   !storetext!
echo       1. $!Sp! Weapon Upgrade            3. $!Ap!, Armour Upgrade            5. $!Hu!, Health Upgrade
echo       2. $!Hp!, Health Potion             4. $!Ab!, Agility Boost             6. Exit
echo ====================================================================================================
set /p Shop=
if %Shop%==1 (goto :swordbuy)
if %Shop%==2 (goto :Healthbuy)
if %Shop%==3 (goto :Armourbuy)
if %Shop%==4 (goto :Agilitybuy)
if %Shop%==5 (goto :HealthUP)
if %Shop%==6 (goto :StoreExit)
if %Shop%==rob (goto :Rob)
if %Shop%==Rob (goto :Rob)
set storetext=Uh... Don't think I can help with that..
goto :buyagain


:swordbuy
set /a money=%money%-!Sp!
if %money% LSS 0 (
set storetext= Sorry mate, Looks like you don't got the money for it!
set /a money=%money%+!Sp!
goto buyagain
)else (
set /a DMG=%DMG%+10
set /a Sword-Up
set storetext=Alrighty, Here you go mate!
set /a Sp=!Sp!+2
goto buyagain
)

:Healthbuy
set /a money=%money%-!Hp!
if %money% LSS 0 (
set storetext= Sorry mate, Looks like you don't got the money for it!
set /a money=%money%+!Hp!
goto buyagain
)else (
set /a PotionH=%PotionH%+1
set storetext=Alrighty, Here's your Health Potion mate!
goto buyagain
)
:HpCountSet
set /a !Hp!=!Hp!+2
set /a !HpCount!=0
goto buyagain

:HealthUP
set /a money=%money%-!Hu!
if %money% LSS 0 (
set storetext= Sorry mate, Looks like you don't got the money for it!
set /a money=%money%+!Hu!
goto buyagain
)else (
set /a Health=%Health%+150
set /a DMGHealth=%Health%+150
set /a Hu=!Hu!+10
set storetext=Alrighty, Here's your Health Upgrade mate!
goto buyagain
)

:Armourbuy
set /a money=%money%-!Ap!
if %money% LSS 0 (
set storetext= Sorry mate, Looks like you don't got the money for it!
set /a money=%money%+!Ap!
goto buyagain
)else (
set /a Armour=%Armour%+2
set /a Ap=!Ap!+20
set storetext=Alrighty, Here's your Armour upgrade mate!
goto buyagain
)

:Agilitybuy
set /a money=%money%-!Ab!
if %money% LSS 0 (
set storetext= Sorry mate, Looks like you don't got the money for it!
set /a money=%money%+!Ab!
goto buyagain
)
set /a AGI=%AGI%+1
set /a Ab=!Ab!+20
set storetext=Alrighty, Here's an Agility Boost mate!
goto buyagain

REM #################################################################################################################--ROBBING
:Rob
set storetext= AHH JEEZ, oKAY OKAY I'LL GIVE YOU WHAT'S IN THE TILL.
@cls
echo ====================================================================================================
echo {}                                                                      [                         {}
echo {}                                           .'''''.                    [                         {}
echo {}                                         .'       '.                  [        Rob Shop         {}
echo {}                                        /           \                 [                         {}
echo {}                                       /_____________\                [    (Please don't, my    {}
echo {}                                        ;           ;                 [     name's Just Rob)    {}
echo {}                                        ;           ;                 [                         {}
echo {}                                        '\         /'    .            [========================={}
echo {}          .".                             ""-----""     ; \___        [     HP-!DMGHealth!/!Health!  ARM-!Armour!
echo {}         [ " ]                        ."""--[   ]--""". ;  __/        [========================={}
echo {}         [___]                       :   .        .   '  /            [         $!money!
echo {}================================================================================================{}
echo {}                                                                                                {}
echo {}                                                                                                {}
echo {}================================================================================================{}
echo {}                                                                                                {}
echo {}/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\{}
echo ====================================================================================================
echo   !storetext!
echo       1. $!Sp!, Weapon Upgrade            3. $!Ap!, Armour Upgrade            5. $!Hu!, Health Upgrade
echo       2. $!Hp!, Health Potion             4. $!Ab!, Agility Boost             6. Exit
echo ====================================================================================================
pause
set /a caught=!random! %%3
if !caught!==2 (
	set storetext= AHH JEEZ, oKAY OKAY I'LL GIVE YOU WHAT'S IN THE TILL.
	set /a money=!money!+1000
	goto :Robbed
)
set storetext= AHH JEEZ, oKAY OKAY I'LL GIVE YOU WHAT'S IN THE TILL.
set /a money=!money!+1000
goto :choice2

:StoreExit
goto :choice2

:Robbed
@cls
echo ====================================================================================================
echo {}                             ]           ]               [           [      {}  HP-!DMGHealth!/!Health!
echo {}                             ]           ]               [           [      {}  ARM-!Armour!
echo {}                        ..-------..      ]               [..-------..[      {}  $!money!
echo {}                        ;__.....__;_____ ]_______________[;__.....__;[      {}=================={}
echo {}                       .___________.----'/               .___________.                          {}
echo {}                       ;           ;HOP]/                ;           ;                          {}
echo {}                       ;           ;   /                 ;           ;                          {}
echo {}                       '.         .'  /                  '.         .'              __          {}
echo {}    _________________.---""-----""---.                [.---""-----""---.         __/  \__       {}
echo {}   /_________________;          //   ;                 ;          //   ;   _____/        \_____ {}
echo {}    []     /_\       ;   . *   //.   ;                 ;   . *   //.   ;  /____________________\{}
echo {}    []     { }       ;   ;    // ;   ;                 ;   ;    // ;   ;   []    _{ }_       [] {}
echo {}    []____-___-__.Oo_;   ;   //  ;   ;                 ;   ;   //  ;   ;   []   ] [ ] [      [] {}
echo {}    []---------------;   ;  //   ;   ;                 ;   ;  //   ;   ;   []----------------[] {}
echo {}    []     PRODUCE   ;   ; //    ;   ;                 ;   ; //    ;   ;   []    POTIONS     [] {}
echo {}....[]...............;   ;//     ;   ;                 ;   ;//     ;   ;...[]................[].{}
echo ====================================================================================================
echo       STOP RIGHT THERE CRIMINAL, YOU ARE SUPPOSE TO KEEP THIS TOWN FROM DANGER! BUT YOU ARE THE                           
echo       REAL DANGER 
echo.
echo      You lost!
echo      Press any key to Exit Game
echo ====================================================================================================
pause>nul
goto :EOF

REM ################################################################################################################--FIGHT
:fight
set /a level=%level%+1
set /a dh=10*%dhl%+%ran%
set /a dmgdh=!dh!
set /a Me=%level%*2*10
set fighttext=A wild lv!level! dragon appeared!
:fightbegin
set /a dhl=%level%*2
set /a ran=%random% %%5
@cls
echo ====================================================================================================
echo {}                                --=======()                                                     {}
echo {}                               (/\___   /^|\\          ()==========--_                           {}
echo {}                                     \_/ ^| \\        //^|\   ______/ \)                          {}
echo {}                                       \_^|  \\      // ^| \_/                                    {}
echo {}                                         \^|\/^|\_   //  /\/                                      {}
echo {}                                          (oo)\ \_//  /                                         {}
echo {}                                          //_/\_\/ /  ^|                                         {}
echo {}                                         ##/  ^|=\  \  ^|                                         {}
echo {}                                              \_=\_ \ ^|                                         {}
echo {}                                                \==\ \^|\_                                       {}
echo {}                                             __(\===\(  )\                                      {}
echo {}                                            (((-) __(_/   ^|                                     {}
echo {}                                                 (((-) \  /                                     {}
echo {}__[DRAGON]________________                       ______/ /       ___[YOU]_______________________{}
echo {}  HP- !dmgdh!/!dh!                                 '------'       [ HP-!DMGHealth!/!Health!    $!money!
echo {}                                                                [   ARM-!Armour!
echo ====================================================================================================
echo                !fighttext!           
echo      What will you do?                              1. Fight             3. Run
echo.                                                    2. Items
echo ====================================================================================================
set /p fightdragon=
if !fightdragon!==1 (goto :attack)
if !fightdragon!==2 (goto :Items)
if !fightdragon!==3 (goto :Run)

:attack
set /a dmgdh=!dmgdh!-!DMG!
set /a ran2=!random! %%RanChance
echo !ran2!
if !occ!==1 (goto :Ran-Check)
if !occ!==2 (goto :Ran-Check)
goto :attack-resume
:Ran-Check
if !ran2!==1 (goto :Miss)

:attack-resume
@cls
echo ====================================================================================================
echo {}                                --=======()                                                     {}
echo {}                               (/\___   /^|\\          ()==========--_                           {}
echo {}                                     \_/ ^| \\        //^|\   ______/ \)                          {}
echo {}                                       \_^|  \\      // ^| \_/                                    {}
echo {}                                         \^|\/^|\_   //  /\/                                      {}
echo {}                                          (oo)\ \_//  /                                         {}
echo {}                                          //_/\_\/ /  ^|                                         {}
echo {}                                         ##/  ^|=\  \  ^|                                         {}
echo {}                                              \_=\_ \ ^|                                         {}
echo {}                                                \==\ \^|\_                                       {}
echo {}                                             __(\===\(  )\                                      {}
echo {}                                            (((-) __(_/   ^|                                     {}
echo {}                                                 (((-) \  /                                     {}
echo {}__[DRAGON]________________                       ______/ /       ___[YOU]_______________________{}
echo {}  HP- !dmgdh!/!dh!                                 '------'       [ HP-!DMGHealth!/!Health!    $!money!
echo {}                                                                [   ARM-!Armour!
echo ====================================================================================================
echo                                                     1. Fight             3. Run
echo      Dragon took !DMG! Damage           
echo.                                                    2.Items
echo ====================================================================================================
if !dmgdh! LSS 1 (goto :Defeat)
pause

:D-attack
@cls
echo ====================================================================================================
echo {}                                --=======()                                                     {}
echo {}                               (/\___   /^|\\          ()==========--_                           {}
echo {}                                     \_/ ^| \\        //^|\   ______/ \)                          {}
echo {}                                       \_^|  \\      // ^| \_/                                    {}
echo {}                                         \^|\/^|\_   //  /\/                                      {}
echo {}                                          (oo)\ \_//  /                                         {}
echo {}                                          //_/\_\/ /  ^|                                         {}
echo {}                                         ##/  ^|=\  \  ^|                                         {}
echo {}                                              \_=\_ \ ^|                                         {}
echo {}                                                \==\ \^|\_                                       {}
echo {}                                             __(\===\(  )\                                      {}
echo {}                                            (((-) __(_/   ^|                                     {}
echo {}                                                 (((-) \  /                                     {}
echo {}__[DRAGON]________________                       ______/ /       ___[YOU]_______________________{}
echo {}  HP- !dmgdh!/!dh!                                   '------'       [ HP-!DMGHealth!/!Health!    $!money!
echo {}                                                                [   ARM-!Armour!
echo ====================================================================================================
echo                                                     1. Fight             3. Run
echo      The Dragon Attacks           
echo.                                                    2. Items
echo ====================================================================================================
pause
set /a dhl=!dhl!*5-!Armour!
if !dhl! LSS 1 (set /a dhl=1)
set /a ran3=!random! %%AGI
set /a ran4=!ran3!+1
if !ran4!==1 (
	set /a DMGHealth=!DMGHealth!-!dhl!
	goto :D-Dmg
)
goto :D-Miss

:D-Dmg
@cls
echo ====================================================================================================
echo {}                                --=======()                                                     {}
echo {}                               (/\___   /^|\\          ()==========--_                           {}
echo {}                                     \_/ ^| \\        //^|\   ______/ \)                          {}
echo {}                                       \_^|  \\      // ^| \_/                                    {}
echo {}                                         \^|\/^|\_   //  /\/                                      {}
echo {}                                          (oo)\ \_//  /                                         {}
echo {}                                          //_/\_\/ /  ^|                                         {}
echo {}                                         ##/  ^|=\  \  ^|                                         {}
echo {}                                              \_=\_ \ ^|                                         {}
echo {}                                                \==\ \^|\_                                       {}
echo {}                                             __(\===\(  )\                                      {}
echo {}                                            (((-) __(_/   ^|                                     {}
echo {}                                                 (((-) \  /                                     {}
echo {}__[DRAGON]________________                       ______/ /       ___[YOU]_______________________{}
echo {}  HP- !dmgdh!/!dh!                                   '------'       [ HP-!DMGHealth!/!Health!    $!money!
echo {}                                                                [   ARM-!Armour!
echo ====================================================================================================
echo                                                     1. Fight             3. Run
echo      Dragon dealt !dhl! Damage           
echo.                                                    2. Items
echo ====================================================================================================
pause
if !DMGHealth! LSS 1 (goto :Defeated)
set fighttext=
goto :fightbegin

@cls
:Miss
set /a dmgdh=!dmgdh!+!DMG!
@cls
echo ====================================================================================================
echo {}                                --=======()                                                     {}
echo {}                               (/\___   /^|\\          ()==========--_                           {}
echo {}                                     \_/ ^| \\        //^|\   ______/ \)                          {}
echo {}                                       \_^|  \\      // ^| \_/                                    {}
echo {}                                         \^|\/^|\_   //  /\/                                      {}
echo {}                                          (oo)\ \_//  /                                         {}
echo {}                                          //_/\_\/ /  ^|                                         {}
echo {}                                         ##/  ^|=\  \  ^|                                         {}
echo {}                                              \_=\_ \ ^|                                         {}
echo {}                                                \==\ \^|\_                                       {}
echo {}                                             __(\===\(  )\                                      {}
echo {}                                            (((-) __(_/   ^|                                     {}
echo {}                                                 (((-) \  /                                     {}
echo {}__[DRAGON]________________                       ______/ /       ___[YOU]_______________________{}
echo {}  HP- !dmgdh!/!dh!                                    '------'       [ HP-!DMGHealth!/!Health!    $!money!
echo {}                                                                [   ARM-!Armour!
echo ====================================================================================================
echo                                                     1. Fight             3. Run
echo      Your Attack Missed!           
echo.                                                    2. Items
echo ====================================================================================================
pause
set fighttext=
goto :D-attack

:D-Miss
set /a Health=!DMGHealth!+!dhl!
@cls
echo ====================================================================================================
echo {}                                --=======()                                                     {}
echo {}                               (/\___   /^|\\          ()==========--_                           {}
echo {}                                     \_/ ^| \\        //^|\   ______/ \)                          {}
echo {}                                       \_^|  \\      // ^| \_/                                    {}
echo {}                                         \^|\/^|\_   //  /\/                                      {}
echo {}                                          (oo)\ \_//  /                                         {}
echo {}                                          //_/\_\/ /  ^|                                         {}
echo {}                                         ##/  ^|=\  \  ^|                                         {}
echo {}                                              \_=\_ \ ^|                                         {}
echo {}                                                \==\ \^|\_                                       {}
echo {}                                             __(\===\(  )\                                      {}
echo {}                                            (((-) __(_/   ^|                                     {}
echo {}                                                 (((-) \  /                                     {}
echo {}__[DRAGON]________________                       ______/ /       ___[YOU]_______________________{}
echo {}  HP- !dmgdh!/!dh!                                    '------'       [ HP-!DMGHealth!/!Health!    $!money!
echo {}                                                                [   ARM-!Armour!
echo ====================================================================================================
echo                                                     1. Fight             3. Run
echo      Dragon's Attack Missed!           
echo.                                                    2. Items
echo ====================================================================================================
pause
set fighttext=
goto :fightbegin

:Defeat
set dmgdh=0
@cls
echo ====================================================================================================
echo {}                                --=======()                                                     {}
echo {}                               (/\___   /^|\\          ()==========--_                           {}
echo {}                                     \_/ ^| \\        //^|\   ______/ \)                          {}
echo {}                                       \_^|  \\      // ^| \_/                                    {}
echo {}                                         \^|\/^|\_   //  /\/                                      {}
echo {}                                          (oo)\ \_//  /                                         {}
echo {}                                          //_/\_\/ /  ^|                                         {}
echo {}                                         ##/  ^|=\  \  ^|                                         {}
echo {}                                              \_=\_ \ ^|                                         {}
echo {}                                                \==\ \^|\_                                       {}
echo {}                                             __(\===\(  )\                                      {}
echo {}                                            (((-) __(_/   ^|                                     {}
echo {}                                                 (((-) \  /                                     {}
echo {}__[DRAGON]________________                       ______/ /       ___[YOU]_______________________{}
echo {}  HP- !dmgdh!/!dh!                                    '------'       [ HP-!DMGHealth!/!Health!    $!money!
echo {}                                                                [   ARM-!Armour!
echo ====================================================================================================
echo                                                     1. Fight             3. Run
echo      You Won, You got !Me! Coins.       
echo.                                                    2. Items
echo ====================================================================================================
set /a DragonsKilled=%DragonsKilled%+1
pause
goto :Watchout

:Items
if !PotionH!==0 (
	set ItemText=You don't have Any Potions. Press 2 to Return to fight
	goto :item
)
set ItemText=Would you like to use a Potion?    1. Yes    2. No
:item
if !occ!==1 goto ElfInv
if !occ!==2 goto WizardInv
if !occ!==3 goto DwarfInv
if !occ!==4 goto HumanInv

:ElfInv
@cls
echo ====================================================================================================
echo {}   ELF BOW !DMG! DMG         {}                                    {}   HP-!DMGHealth!/!Health!
echo {}============================{}      EXPERIMENTAL ITEM MENU        {}   ARM-!Armour!
echo {}          ....              {}                                    {}   AGL-!AGI!
echo {}         :'''';.            {}===================================={}   $!money!
echo {}         ::    ;;           {}                                    {}                            {}
echo {}         ::     ;;          {}  Health Potions  x!PotionH!                {}----------------------------{}
echo {}         ::      ^|^|         {}                                    {}      .---._______.---.     {}
echo {}         }========^|=^>       {}                                    {}     ;      ;\ /;      ;    {}
echo {}         ::      ^|^|         {}                                    {}     ;   .  ; ' ;  .   ;    {}
echo {}         ::     ;;          {}                                    {}    ;   .;  ;   ;  ;.   ;   {}
echo {}         ::    ;;           {}                                    {}    ;   ; ; ;   ; ; ;   ;   {}
echo {}         :....;'            {}                                    {}   ;___;  ; ;   ; ;  ;___;  {}
echo {}          """"              {}                                    {}         ; ;-.-.-; ;        {}
echo {}                            {}                                    {}        ;""--'-'--"";       {}
echo {}                            {}                                    {}        ;           ;       {}
echo {}                            {}                                    {}       ;             ;      {}
echo {}                            {}                                    {}       ;__;--;__;--;_;      {}
echo ====================================================================================================
echo        !ItemText! 
echo            
echo ====================================================================================================
set /p PotionHUse=
if %PotionHUse%== 1 (goto PotionHUsing)
goto fightbegin
:PotionHUsing
set /a DMGHealth=!DMGHealth!+15
if !DMGHealth! GEQ !Health! (set DMGHealth=!Health!)
set /a PotionH=!PotionH!-1
if !PotionH! LSS 0 (
	set PotionH=0
	set fighttext=You didn't have any potions!
	goto fightbegin
)
goto fightbegin
:WizardInv
@cls
echo ====================================================================================================
echo {}   WIZARD STAFF !DMG! DMG     {}                                    {}  HP-!DMGHealth!/!Health!
echo {}============================{}      EXPERIMENTAL ITEM MENU        {}  ARM-!Armour!
echo {}                            {}                                    {}  AGL-!AGI!
echo {}                            {}===================================={}  $!money!
echo {}                            {}                                    {}                            {}
echo {}            .--.            {}  Health Potions  x!PotionH!                {}----------------------------{}
echo {}           ;.''.;           {}                                    {}      .---._______.---.     {}
echo {}           ;'..^|^|           {}                                    {}     ;     ;     ;     ;    {}
echo {}            '""^|^|           {}                                    {}     ;   .  ;   ;  .   ;    {}
echo {}               ^|^|           {}                                    {}    ;    ;   ; ;   ;    ;   {}
echo {}               ^|^|           {}                                    {}    ;    ;   ; ;   ;    ;   {}
echo {}               ^|^|           {}                                    {}    ;   ;;   ; ;   ;;   ;   {}
echo {}               ^|^|           {}                                    {}   ;    ;;   ; ;   ;;    ;  {}
echo {}               ^|^|           {}                                    {}   ;   ; ;---.-.---; ;   ;  {}
echo {}               ^|^|           {}                                    {}   ;___; ;---'-'---; ;___;  {}
echo {}               ^|^|           {}                                    {}        ;   ;   ;   ;       {}
echo {}               ^|^|           {}                                    {}        ;   ;   ;   ;       {}
echo ====================================================================================================
echo        !ItemText! 
echo            
echo ====================================================================================================
set /p PotionHUse=
if %PotionHUse%== 1 (goto PotionHUsing)
goto fightbegin
:PotionHUsing
set /a DMGHealth=!DMGHealth!+15
if !DMGHealth! GEQ !Health! (set DMGHealth=!Health!)
set /a PotionH=!PotionH!-1
if !PotionH! LSS 0 (
	set PotionH=0
	set fighttext=You didn't have any potions!
	goto fightbegin
)
goto fightbegin
:DwarfInv 
@cls
echo ====================================================================================================
echo {}     DWARF AXE !DMG! DMG       {}                                    {}  HP-!DMGHealth!/!Health!
echo {}============================{}      EXPERIMENTAL ITEM MENU        {}  ARM-!Armour!
echo {}                            {}                                    {}  AGL-!AGI!
echo {}                            {}===================================={}  $!money!
echo {}      /''-. ^|^| .-''\        {}                                    {}                            {}
echo {}     ;     '^|^|'     ;       {}  Health Potions  x!PotionH!                {}----------------------------{}
echo {}     ;     .^|^|.     ;       {}                                    {}     .---._______.---.      {}
echo {}      \..-' ^|^| '-../        {}                                    {}    ;      ;   ;//    ;     {}
echo {}            ^|^|              {}                                    {}    ;    .  ;_;//.    ;     {}
echo {}            ^|^|              {}                                    {}    ;  /;   ;^+//  ;/\/      {}
echo {}            ^|^|              {}                                    {}     \/ ;   ;//   ;         {}
echo {}            ^|^|              {}                                    {}        ;   //;   ;         {}
echo {}            ^|^|              {}                                    {}        ;  //^+;   ;         {}
echo {}            ^|^|              {}                                    {}                            {}
echo {}            ^|^|              {}                                    {}                            {}
echo {}            ^|^|              {}                                    {}                            {}
echo {}            ^|^|              {}                                    {}                            {}
echo ====================================================================================================
echo        !ItemText! 
echo            
echo ====================================================================================================
set /p PotionHUse=
if %PotionHUse%== 1 (goto PotionHUsing)
goto fightbegin
:PotionHUsing
set /a DMGHealth=!DMGHealth!+15
if !DMGHealth! GEQ !Health! (set DMGHealth=!Health!)
set /a PotionH=!PotionH!-1
if !PotionH! LSS 0 (
	set PotionH=0
	set fighttext=You didn't have any potions!
	goto fightbegin
)
goto fightbegin
:HumanInv 
@cls
echo ====================================================================================================
echo {}SWORD FROM THE GROUND !DMG! DMG{}                                    {}  HP-!DMGHealth!/!Health!
echo {}============================{}      EXPERIMENTAL ITEM MENU        {}  ARM-!Armour!
echo {}                            {}                                    {}  AGL-!AGI!
echo {}          / \               {}===================================={}  $!money!
echo {}          ^| ^|               {}                                    {}                            {}
echo {}          ^| ^|               {}  Health Potions  x!PotionH!                {}----------------------------{}
echo {}          ^| ^|               {}                                    {}      .---._____.---.       {}
echo {}          ^| ^|               {}                                    {}     ^|      \_/      ^|      {}
echo {}          ^| ^|               {}                                    {}     ^|   .       .   ^|      {}
echo {}          ^| ^|               {}                                    {}     ^|___^|       ^|___^|      {}
echo {}       ^|\/^| ^|\/^|            {}                                    {}         ^|       ^|          {}
echo {}        \_____/             {}                                    {}         ^|       ^|          {}
echo {}          {-}               {}                                    {}         ^|       ^|          {}
echo {}          {-}               {}                                    {}         ^|_______^|          {}
echo {}          {-}               {}                                    {}                            {}
echo {}          [_]               {}                                    {}                            {}
echo {}                            {}                                    {}                            {}
echo ====================================================================================================
echo        !ItemText! 
echo            
echo ====================================================================================================
set /p PotionHUse=
if %PotionHUse%== 1 (goto PotionHUsing)
goto fightbegin
:PotionHUsing
set /a DMGHealth=!DMGHealth!+15
if !DMGHealth! GEQ !Health! (set DMGHealth=!Health!)
set /a PotionH=!PotionH!-1
if !PotionH! LSS 0 (
	set PotionH=0
	set fighttext=You didn't have any potions!
	goto fightbegin
)
goto fightbegin

:BF-Items
if !PotionH!==0 (
	set ItemText=You don't have Any Potions. Enter 2 to Return to Menu
	goto :BF-item
)
set ItemText=Would you like to use a Potion?    1. Yes    2. No
:BF-item
if !occ!==1 goto BF-ElfInv
if !occ!==2 goto BF-WizardInv
if !occ!==3 goto BF-DwarfInv
if !occ!==4 goto BF-HumanInv

:BF-ElfInv
@cls
echo ====================================================================================================
echo {}   ELF BOW !DMG! DMG         {}                                    {}   HP-!DMGHealth!/!Health!
echo {}============================{}      EXPERIMENTAL ITEM MENU        {}   ARM-!Armour!
echo {}          ....              {}                                    {}   AGL-!AGI!
echo {}         :'''';.            {}===================================={}   $!money!
echo {}         ::    ;;           {}                                    {}                            {}
echo {}         ::     ;;          {}  Health Potions  x!PotionH!                {}----------------------------{}
echo {}         ::      ^|^|         {}                                    {}      .---._______.---.     {}
echo {}         }========^|=^>       {}                                    {}     ;      ;\ /;      ;    {}
echo {}         ::      ^|^|         {}                                    {}     ;   .  ; ' ;  .   ;    {}
echo {}         ::     ;;          {}                                    {}    ;   .;  ;   ;  ;.   ;   {}
echo {}         ::    ;;           {}                                    {}    ;   ; ; ;   ; ; ;   ;   {}
echo {}         :....;'            {}                                    {}   ;___;  ; ;   ; ;  ;___;  {}
echo {}          """"              {}                                    {}         ; ;-.-.-; ;        {}
echo {}                            {}                                    {}        ;""--'-'--"";       {}
echo {}                            {}                                    {}        ;           ;       {}
echo {}                            {}                                    {}       ;             ;      {}
echo {}                            {}                                    {}       ;__;--;__;--;_;      {}
echo ====================================================================================================
echo        !ItemText! 
echo            
echo ====================================================================================================
set /p PotionHUse=
if %PotionHUse%== 1 (goto BF-PotionHUsing)
goto BF-Choice2
:BF-PotionHUsing
set /a DMGHealth=!DMGHealth!+15
if !DMGHealth! GEQ !Health! (set DMGHealth=!Health!)
set /a PotionH=!PotionH!-1
if !PotionH! LSS 0 (
	set PotionH=0
	set BF-Text=You didn't have any potions!
	goto BF-Choice2
)
goto BF-Choice2
:BF-WizardInv
@cls
echo ====================================================================================================
echo {}   WIZARD STAFF !DMG! DMG     {}                                    {}  HP-!DMGHealth!/!Health!
echo {}============================{}      EXPERIMENTAL ITEM MENU        {}  ARM-!Armour!
echo {}                            {}                                    {}  AGL-!AGI!
echo {}                            {}===================================={}  $!money!
echo {}                            {}                                    {}                            {}
echo {}            .--.            {}  Health Potions  x!PotionH!                {}----------------------------{}
echo {}           ;.''.;           {}                                    {}      .---._______.---.     {}
echo {}           ;'..^|^|           {}                                    {}     ;     ;     ;     ;    {}
echo {}            '""^|^|           {}                                    {}     ;   .  ;   ;  .   ;    {}
echo {}               ^|^|           {}                                    {}    ;    ;   ; ;   ;    ;   {}
echo {}               ^|^|           {}                                    {}    ;    ;   ; ;   ;    ;   {}
echo {}               ^|^|           {}                                    {}    ;   ;;   ; ;   ;;   ;   {}
echo {}               ^|^|           {}                                    {}   ;    ;;   ; ;   ;;    ;  {}
echo {}               ^|^|           {}                                    {}   ;   ; ;---.-.---; ;   ;  {}
echo {}               ^|^|           {}                                    {}   ;___; ;---'-'---; ;___;  {}
echo {}               ^|^|           {}                                    {}        ;   ;   ;   ;       {}
echo {}               ^|^|           {}                                    {}        ;   ;   ;   ;       {}
echo ====================================================================================================
echo        !ItemText! 
echo            
echo ====================================================================================================
set /p PotionHUse=
if %PotionHUse%== 1 (goto BF-PotionHUsing)
goto BF-Choice2
:BF-PotionHUsing
set /a DMGHealth=!DMGHealth!+15
if !DMGHealth! GEQ !Health! (set DMGHealth=!Health!)
set /a PotionH=!PotionH!-1
if !PotionH! LSS 0 (
	set PotionH=0
	set BF-Text=You didn't have any potions!
	goto BF-Choice2
)
goto BF-Choice2

:BF-DwarfInv 
@cls
echo ====================================================================================================
echo {}     DWARF AXE !DMG! DMG       {}                                    {}  HP-!DMGHealth!/!Health!
echo {}============================{}      EXPERIMENTAL ITEM MENU        {}  ARM-!Armour!
echo {}                            {}                                    {}  AGL-!AGI!
echo {}                            {}===================================={}  $!money!
echo {}      /''-. ^|^| .-''\        {}                                    {}                            {}
echo {}     ;     '^|^|'     ;       {}  Health Potions  x!PotionH!                {}----------------------------{}
echo {}     ;     .^|^|.     ;       {}                                    {}     .---._______.---.      {}
echo {}      \..-' ^|^| '-../        {}                                    {}    ;      ;   ;//    ;     {}
echo {}            ^|^|              {}                                    {}    ;    .  ;_;//.    ;     {}
echo {}            ^|^|              {}                                    {}    ;  /;   ;^+//  ;/\/      {}
echo {}            ^|^|              {}                                    {}     \/ ;   ;//   ;         {}
echo {}            ^|^|              {}                                    {}        ;   //;   ;         {}
echo {}            ^|^|              {}                                    {}        ;  //^+;   ;         {}
echo {}            ^|^|              {}                                    {}                            {}
echo {}            ^|^|              {}                                    {}                            {}
echo {}            ^|^|              {}                                    {}                            {}
echo {}            ^|^|              {}                                    {}                            {}
echo ====================================================================================================
echo        !ItemText! 
echo            
echo ====================================================================================================
set /p PotionHUse=
if %PotionHUse%== 1 (goto BF-PotionHUsing)
goto BF-Choice2
:BF-PotionHUsing
set /a DMGHealth=!DMGHealth!+15
if !DMGHealth! GEQ !Health! (set DMGHealth=!Health!)
set /a PotionH=!PotionH!-1
if !PotionH! LSS 0 (
	set PotionH=0
	set BF-Text=You didn't have any potions!
	goto BF-Choice2
)
goto BF-Choice2

:BF-HumanInv 
@cls
echo ====================================================================================================
echo {}SWORD FROM THE GROUND !DMG! DMG{}                                    {}  HP-!DMGHealth!/!Health!
echo {}============================{}      EXPERIMENTAL ITEM MENU        {}  ARM-!Armour!
echo {}                            {}                                    {}  AGL-!AGI!
echo {}          / \               {}===================================={}  $!money!
echo {}          ^| ^|               {}                                    {}                            {}
echo {}          ^| ^|               {}  Health Potions  x!PotionH!                {}----------------------------{}
echo {}          ^| ^|               {}                                    {}      .---._____.---.       {}
echo {}          ^| ^|               {}                                    {}     ^|      \_/      ^|      {}
echo {}          ^| ^|               {}                                    {}     ^|   .       .   ^|      {}
echo {}          ^| ^|               {}                                    {}     ^|___^|       ^|___^|      {}
echo {}       ^|\/^| ^|\/^|            {}                                    {}         ^|       ^|          {}
echo {}        \_____/             {}                                    {}         ^|       ^|          {}
echo {}          {-}               {}                                    {}         ^|       ^|          {}
echo {}          {-}               {}                                    {}         ^|_______^|          {}
echo {}          {-}               {}                                    {}                            {}
echo {}          [_]               {}                                    {}                            {}
echo {}                            {}                                    {}                            {}
echo ====================================================================================================
echo        !ItemText! 
echo            
echo ====================================================================================================
set /p PotionHUse=
if %PotionHUse%== 1 (goto BF-PotionHUsing)
goto BF-Choice2
:BF-PotionHUsing
set /a DMGHealth=!DMGHealth!+15
if !DMGHealth! GEQ !Health! (set DMGHealth=!Health!)
set /a PotionH=!PotionH!-1
if !PotionH! LSS 0 (
	set PotionH=0
	set BF-Text=You didn't have any potions!
	goto BF-Choice2
)
goto BF-Choice2
:Run
@cls
echo ====================================================================================================
echo {}                                --=======()                                                     {}
echo {}                               (/\___   /^|\\          ()==========--_                           {}
echo {}                                     \_/ ^| \\        //^|\   ______/ \)                          {}
echo {}                                       \_^|  \\      // ^| \_/                                    {}
echo {}                                         \^|\/^|\_   //  /\/                                      {}
echo {}                                          (oo)\ \_//  /                                         {}
echo {}                                          //_/\_\/ /  ^|                                         {}
echo {}                                         ##/  ^|=\  \  ^|                                         {}
echo {}                                              \_=\_ \ ^|                                         {}
echo {}                                                \==\ \^|\_                                       {}
echo {}                                             __(\===\(  )\                                      {}
echo {}                                            (((-) __(_/   ^|                                     {}
echo {}                                                 (((-) \  /                                     {}
echo {}__[DRAGON]________________                       ______/ /       ___[YOU]_______________________{}
echo {}  HP !dmgdh!/!dh!                                         '------'       [ HP-!DMGHealth!/!Health!    $!money!
echo {}                                                                [   ARM-!Armour!
echo ====================================================================================================
echo                                                     1. Fight             3. Run
echo      You can't run, Silly.       
echo .                                                   2. Items
echo ====================================================================================================
pause
goto :fightbegin


:Watchout
@cls
set /a money=!money!+!Me!
echo ====================================================================================================
echo {}                             ]           ]               [           [      {}  HP-!DMGHealth!/!Health!    
echo {}                             ]           ]               [           [      {}  ARM-!Armour!
echo {}                        ..-------..      ]               [..-------..[      {}  $!money!
echo {}                        ;__.....__;_____ ]_______________[;__.....__;[      {}=================={}
echo {}                       .___________.----'/               .___________.                          {}
echo {}                       ;           ;HOP]/                ;           ;                          {}
echo {}                       ;           ;   /                 ;           ;                          {}
echo {}                       '.         .'  /                  '.         .'              __          {}
echo {}    _________________.---""-----""---.                [.---""-----""---.         __/  \__       {}
echo {}   /_________________;          //   ;                 ;          //   ;   _____/        \_____ {}
echo {}    []     /_\       ;   . *   //.   ;                 ;   . *   //.   ;  /____________________\{}
echo {}    []     { }       ;   ;    // ;   ;                 ;   ;    // ;   ;   []    _{ }_       [] {}
echo {}    []____-___-__.Oo_;   ;   //  ;   ;                 ;   ;   //  ;   ;   []   ] [ ] [      [] {}
echo {}    []---------------;   ;  //   ;   ;                 ;   ;  //   ;   ;   []----------------[] {}
echo {}    []     PRODUCE   ;   ; //    ;   ;                 ;   ; //    ;   ;   []    POTIONS     [] {}
echo {}....[]...............;   ;//     ;   ;                 ;   ;//     ;   ;...[]................[].{}
echo ====================================================================================================
echo     Bravo !name!, It seems like there are some dragon renforcements comming. Get yourself ready                          
echo     for the next battle
echo ====================================================================================================
pause
goto :choice2

:Defeated
@cls
echo ====================================================================================================
echo {}                                --=======()                                                     {}
echo {}                               (/\___   /^|\\          ()==========--_                           {}
echo {}                                     \_/ ^| \\        //^|\   ______/ \)                          {}
echo {}                                       \_^|  \\      // ^| \_/                                    {}
echo {}                                         \^|\/^|\_   //  /\/                                      {}
echo {}                                          (oo)\ \_//  /                                         {}
echo {}                                          //_/\_\/ /  ^|                                         {}
echo {}                                         ##/  ^|=\  \  ^|                                         {}
echo {}                                              \_=\_ \ ^|                                         {}
echo {}                                                \==\ \^|\_                                       {}
echo {}                                             __(\===\(  )\                                      {}
echo {}                                            (((-) __(_/   ^|                                     {}
echo {}                                                 (((-) \  /                                     {}
echo {}__[DRAGON]________________                       ______/ /       ___[YOU]_______________________{}
echo {}  HP- !dmgdh!/!dh!                                        '------'       [ HP-!DMGHealth!/!Health!    $!money!
echo {}                                                                [   ARM-!Armour!
echo ====================================================================================================
echo                                                     1. Fight             3. Run
echo      You Died.       
echo .                                                   2. Items
echo ====================================================================================================
PAUSE
goto :Lose

:TitleSettings
@cls
set SettingText=.
:TSettings
@cls
echo SETTINGS
echo --------------------------------------------------------------------
echo !SettingText!
echo Choose a Number:
echo.
echo 1. Inverted [!invert!]
echo 2. Save 
echo 3. Load
echo 4. Exit
set /p Settin=
if %Settin%==1 (goto :TInvert)
if %Settin%==2 (goto :TSaveGame)
if %Settin%==3 (goto :TLoad)
if %Settin%==4 (goto title)
Rem ############################################################################
:TInvert
if %InvC%==1 (
	color 0F
	set InvC=0
	set invert=.
	set SettingText=Inverted The Screen
	goto TSettings
)
color F0
set InvC=1
set invert=#
set SettingText=Inverted The Screen
goto TSettings

:TSaveGame
set SettingText=Please Enter a Game to Save
goto TSettings

:TLoad
@cls
echo LOAD
echo --------------------------------------------------------------------
echo Enter the save file you would like to Load
echo @~@~@~@~@~@~@~@~@~@~@~@~@~@~@~@~@~@~@~@~@~@~@~@~@
dir /b /a-d *.save
echo @~@~@~@~@~@~@~@~@~@~@~@~@~@~@~@~@~@~@~@~@~@~@~@~@
set /p savename=Filename: 
if exist %savename%.save goto tloadsave
set SettingText=Sorry, that File didn't exist.
goto :TSettings

:tloadsave
@cls
< %savename%.save (
set /p money=
set /p DMG=
set /p Health=
set /p PotionH=
set /p Armour=
set /p AGI=
set /p occ=
set /p level=
set /p dh=
set /p dhl=
set /p name=
set /p RanChance=
set /p DMGHealth=
set /p Hp=
set /p Sp=
set /p Ap=
set /p Ab=
set /p Hu=
set /p HpCount=
)
set Continue=Continue
echo LOAD
echo --------------------------------------------------------------------
echo File Loaded!
pause
goto TSettings

:GameSettings
@cls
set SettingText=.
:GSettings
@cls

echo SETTINGS
echo --------------------------------------------------------------------
echo !SettingText!
echo Choose a Number:
echo.
echo 1. Inverted [!invert!]
echo 2. Save 
echo 3. Load
echo 4. Exit
set /p Settin=
if %Settin%==1 (goto GInvert)
if %Settin%==2 (goto GSaveGame)
if %Settin%==3 (goto GLoad)
if %Settin%==4 (goto choice2)
Rem ############################################################################
:GInvert
if %InvC%==1 (
	color 0F
	set InvC=0
	set invert=.
	set SettingText=Inverted The Screen
	goto GSettings
)
color F0
set InvC=1
set invert=#
set SettingText=Inverted The Screen
goto GSettings

:GSaveGame
@cls
echo SAVE
echo --------------------------------------------------------------------
echo What would you want your Savefile to be called?
set /p filename=Filename: 
(
echo %money%
echo %DMG%
echo %Health%
echo %PotionH%
echo %Armour%
echo %AGI%
echo %occ%
echo %level%
echo %dh%
echo %dhl%
echo %name%
echo %RanChance%
echo %DMGHealth%
echo %Hp%
echo %Sp%
echo %Ap%
echo %Ab%
echo %Hu%
echo %HpCount%
)>%filename%.save
set SettingText=Saved Game!
goto GSettings

:GLoad
@cls
echo LOAD
echo --------------------------------------------------------------------
echo Enter the save file you would like to Load
echo @~@~@~@~@~@~@~@~@~@~@~@~@~@~@~@~@~@~@~@~@~@~@~@~@
dir /b /a-d *.save
echo @~@~@~@~@~@~@~@~@~@~@~@~@~@~@~@~@~@~@~@~@~@~@~@~@
set /p savename=Filename: 
if exist %savename%.save goto gloadsave
set SettingText=Sorry, that File didn't exist.
goto :TSettings

:gloadsave
@cls
< %savename%.save (
set /p money=
set /p DMG=
set /p Health=
set /p PotionH=
set /p Armour=
set /p AGI=
set /p occ=
set /p level=
set /p dh=
set /p dhl=
set /p name=
set /p RanChance=
set /p DMGHealth=
set /p Hp=
set /p Sp=
set /p Ap=
set /p Ab=
set /p Hu=
set /p HpCount=
)
set Continue=Continue
echo LOAD
echo --------------------------------------------------------------------
echo File Loaded!
pause
goto GSettings
