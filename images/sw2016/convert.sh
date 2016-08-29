ls -1 *.jpg | grep -v "thumb" | while read
do
  if [ ! -f "${REPLY/.jpg/-thumb.jpg}" ]
  then
    convert -thumbnail 150x150 "$REPLY" "${REPLY/.jpg/-thumb.jpg}"
  fi
done

