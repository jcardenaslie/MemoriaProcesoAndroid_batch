# Memoria-Proceso-Android
USO PASOS:

con todo instalado
Esto es poder ejecutar los comandos adb dentro de la carpeta que contiene el adb
(mi caso) "C:\Users\jquin\AppData\Local\Android\sdk\platform-tools"
y verificar que el dispositivo esta siendo bien reconocido con : adb devices

Informacion necesaria:
ejecutar "adb shell dumpsys meminfo" y buscar el nombre del proceso 
que seguramente se llama "com.octetostudios.cognitivefunctions" y copiarlo

Ejecucion programa:
>memInfoADB.bat {nombre_proceso} {iteraciones} {tiempo_espera_iteraciones}
->tiempo_espera_iteraciones >= 1, osino no funciona.

Lo que hace el programa es ejecutar iterativamente el sgte comando:
adb shell dumpsys meminfo {nombre_proceso} y almacena la informacion que despliega el 
adb sobre la memoria que utiliza.

DOCUMENTACION BATCH:

http://www.robvanderwoude.com/for.php
http://www.robvanderwoude.com/find.php
https://ss64.com/nt/for_f.html

DOCUMENTACION extra:
Simulator:
https://software.intel.com/en-us/xdk/docs/intel-xdk-simulator-limitations

WebView:
http://blogs.intel.com/evangelists/2014/09/02/html5-web-app-webview-app/

Crosswalk:
https://software.intel.com/en-us/html5/hub/blogs/html5-hub-introducing-crosswalk
https://software.intel.com/en-us/xdk/docs/crosswalk-application-runtime-overview
https://github.com/phonegap-build/cordova-plugin-crosswalk-webview


Debug:
https://software.intel.com/en-us/xdk/docs/intel-xdk-debug-and-test-overview#RemoteChromeDevTools
https://github.com/gomobile/sample-hello-cordova/blob/master/docs/README.md#using-the-debug-tab
https://software.intel.com/en-us/xdk/docs/intel-xdk-debug-and-test-overview#DebugTab

Remote Debug (Chrome)
https://software.intel.com/en-us/xdk/docs/using-remote-chrome-devtools-to-debug-android-cordova-apps
https://software.intel.com/en-us/xdk/docs/configuring-your-windows-usb-android-debug-connection-for-the-intel-xdk#Chrome_USB_Test

Webinars:
https://software.intel.com/en-us/xdk/docs/webinars-videos-links


Android Studio
https://developer.android.com/studio/intro/index.html
https://developer.android.com/studio/profile/android-monitor.html
https://developer.android.com/studio/profile/am-memory.html
https://developer.android.com/studio/debug/am-logcat.html
https://developer.android.com/studio/profile/am-basics.html#byb


Para que Android Stuido reconosca la apk generada por IntelXDK, el archivo intelxdk.config.additions.xml en el projecto de XDK debe tener el siguiente campo seteado de esta manera:
<preference name="debuggable" value="true"/>


ADB:
primero:
https://www.howtogeek.com/125769/how-to-install-and-use-abd-the-android-debug-bridge-utility/
comandos:
http://adbshell.com/
http://adbshell.com/commands/adb-shell-dumpsys
https://software.intel.com/en-us/xdk/docs/installing-android-debug-bridge-adb-usb-driver-on-windows#verify_usb

MEMORY:
https://android-developers.googleblog.com/2014/01/process-stats-understanding-how-your.html

Battery Usage:
https://github.com/google/battery-historian

