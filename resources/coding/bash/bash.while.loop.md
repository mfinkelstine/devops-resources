# while loop
```bash
while IFS= read -u 3 -r -d '' filename; do
  if [[ -d $filename ]]; then
    printf -v cmd_str 'cd %q; mkdir -p %q' "$REMOTE_PATH" "$filename"
    ssh "$USER@$SERVER" "$cmd_str"
  else
    printf -v remote_path_str '%q@%q:%q/%q' "$USER" "$SERVER" "$REMOTE_PATH" "$filename"
    scp -Cp "$filename" "$remote_path_str"
  fi
done 3< <(find devel/ -newer "$UPLOAD_FILE" -print0)
```

```bash
count=0

while read hostname
do

 conunt=$((count+1))
 printf "%s" "%s" $count $hostname
 ssh -n -o "StrictHostKeyChecking no" meirfi@$hostname uptime
done < host_list

```