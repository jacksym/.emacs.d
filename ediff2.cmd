
@set a=%~1
@set b=%~2
@rem Convert backslashes to forward slashes
@set a=%a:\=/%
@set b=%b:\=/%
@rem @"C:\Program Files\Emacs\emacs-30.2\bin\emacsclientw.exe" -n -a "" -e "(ediff-files \"%a%\" \"%b%\")"
@"C:\Program Files\Emacs\emacs-30.2\bin\emacsclientw.exe" -n -a "" -c -e "(ediff-files \"%a%\" \"%b%\")"
