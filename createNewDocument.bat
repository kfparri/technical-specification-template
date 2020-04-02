::@Echo Off
:: %1 is the first parameter.  In this case, the parameter is the destination folder and is required

:: Usage createnewDocument <ProjectName> <DestinationPAth>
IF %1.==. GOTO MissingParam
IF %2.==. GOTO MissingParam

:: First, copy the document files
XCOPY software-specification-template %2\%1-specification\ /E 
XCOPY .gitignore %2\

pushd %2

git init

popd

Echo "Done!  Your new documentation project can be found here %1\%1-specification\"

GOTO End

:MissingParam
    Echo Usage: createNewDocument ProjectNameDestinationPath
    GOTO End

:End