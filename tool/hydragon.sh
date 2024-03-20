#!/bin/env sh
basedir="$(dirname "$(readlink -f "${0}")")"
app_process_path=''
for path in \
  '/bin/app_process64' \
  '/bin/app_process' \
  '/bin/app_process32' \
  '/system/bin/app_process64' \
  '/system/bin/app_process' \
  '/system/bin/app_process32' ; do
  [[ -f "${path}" ]] && app_process_path="${path}"
  break
done
[[ "${app_process_path}" == '' ]] && {
  echo 'cannot find app_process'
  exit 1
}
exec "${app_process_path}" -Djava.class.path="${basedir}/hydragon.dex" "${basedir}" tokyo.caimingyu.hydragon.MainKt ${@}
