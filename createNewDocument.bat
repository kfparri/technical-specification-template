:: %1 is the first parameter.  In this case, the parameter is the destination folder and is required

IF %1.==. GOTO MissingParam

:: First, copy the document files
XCOPY software-specification-template %1\%1-specification\ /E 
XCOPY .gitignore %1\.gitignore

pusd %1

git init

popd

Echo Done!  Your new documentation project can be found here %1\%1-specification\

:MissingParam
    Echo Usage: createNewDocument <Destination Path>
    GOTO End

:End