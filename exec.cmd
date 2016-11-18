@ECHO OFF
setlocal enabledelayedexpansion

pushd target

for /R "lib" %%i in (*.jar) do (
  SET CLASSPATH=!CLASSPATH!;%%i
)
SET CLASSPATH=!CLASSPATH!;kaitai_struct_visualizer_java-0.5-SNAPSHOT.jar

:: A JDK is needed because of tools.jar, global "java" might provide a JRE instead, depending on
:: settings of the Java control panel.
"%JAVA_HOME%\bin\javaw.exe" io.kaitai.struct.visualizer.MainWindow "%USERPROFILE%\Desktop\Clipboard01.bmp" "%USERPROFILE%\Downloads\bmp.ksy"

popd
