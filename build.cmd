@echo Off

echo %~nx0: Building...
dotnet build --configuration Release || goto :error

echo %~nx0: Testing...
dotnet test --configuration Release --no-build || goto :error

goto :EOF
:error
exit /b %errorlevel%
