@echo off

::Э���ļ�·��, ���Ҫ����\������
set SOURCE_FOLDER=.\proto

::Java������·��
set JAVA_COMPILER_PATH=.\protoc.exe

::Java�ļ�����·��, ���Ҫ����\������
set JAVA_TARGET_PATH=D:\qycache\GameServer\generate

::ɾ��֮ǰ�������ļ�
del %JAVA_TARGET_PATH%\*.* /f /s /q

for /f "delims=" %%i in ('dir /b %SOURCE_FOLDER%\*.proto') do (
    %JAVA_COMPILER_PATH% --java_out=%JAVA_TARGET_PATH% %%i
)

echo Э��������ϡ�����

pause