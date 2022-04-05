bucket=jagan89067
files_location=/opt/s3files/
contentType="application/x-compressed-tar"
function pushToS3()
{
  files_path=$1
  for file in $files_path*
  do
    fname=$(basename $file)
    logInfo "Start sending $fname to S3"
    resource="/${bucket}/${fname}"
    stringToSign="PUT\n\n${contentType}\n${resource}"
    signature=`echo -en ${stringToSign} | openssl sha1 -hmac ${s3Secret} -binary | base64`
    curl -X PUT -T "${file}" \
     -H "Host: ${bucket}.s3.amazonaws.com" \
     -H "Content-Type: ${contentType}" \
      https://${bucket}.s3.amazonaws.com/${now_date}/${fname}}
     logInfo "$fname has been sent to S3 successfully."
  done
}
pushToS3 $files_location
