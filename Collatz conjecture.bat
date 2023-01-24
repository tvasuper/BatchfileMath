@echo off
set step=0
set /p num=num : 
set num0=%num%
:loop
set num1=%num%

:: 짝수홀수 확인
set /a evenodd=%num%%%"2"

:: num이 짝수일 때 괄호 내의 연산을 행함
if %evenodd%==0 (
	set /a num/=2
)

:: num이 홀수일 때 괄호 내의 연산을 행함
if %evenodd%==1 (
	set /a num*=3
	set /a num+=1
)

:: 연산결과 출력
if %evenodd%==0 (
	echo %num1% is even ▶ %num%) else (
	echo %num1% is odd ▶ %num%)
set /a step+=1

:: 조건을 만족하면 연산 종료
if %num%==1 (
	echo Success!
	echo %num0% Step : %step%
	pause
	exit /b
)
goto loop
