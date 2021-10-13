[[ `uname -m` == 'x86_64' ]] && a='x86_64' || a='i386'
t=install-ccenter-$a && curl --progress http://dl.appnode.com/$t > $t && chmod +x $t && ./$t "$@"
rt=$?
rm -f $t
exit $rt
