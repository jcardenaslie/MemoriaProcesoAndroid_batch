@ECHO Off
Rem xdk.intel.cordova.template.lite
Rem Documentation: 	https://ss64.com/nt/for_f.html
Rem Copied from: 	http://stackoverflow.com/questions/9307187/how-to-find-the-number-of-occurrences-of-a-string-in-file-using-windows-command
Rem %1 string to find
Rem %2 times to iterate
Rem %3 time window between iterations


Rem actualmente se demora un promedio de 3 segundo en ejecutar una iteracion, seria el tiempo de atraso base
Rem por lo tanto el tiempo que se muestra en el resultado es 3 + %3 (input usuario)

del prueba4.csv
setlocal 
@setlocal enableextensions enabledelayedexpansion    
SET TOTAL=0
SET KB=0
set /a counter=0
:Top

Set /a counter=%counter%+1
del prueba.txt
adb shell dumpsys meminfo | findstr %1  >> prueba.txt


FOR /F "usebackq tokens=*" %%I IN (prueba.txt) do (
    SET LN=%%I
    FOR %%J IN ("!LN!") do (
		REM ECHO %%J
		
        FOR /F %%K IN ( 'ECHO %%J ^| FIND /I /C "%1"') DO (
			
			@SET /A TOTAL=!TOTAL!+%%K
			IF !TOTAL! == 1  (for /F %%J in ( %%J ) do ( SET KB=%%J)) && ( ECHO  !TIME! , !KB! ,%%J    >> prueba4.csv)
        )
    )
)

timeout /t %3  

If %counter% LSS %2 GoTo :Top
Pause