top_of_header=head -n 1 LICENSE_HEADER
for i in '*.py*' # or whatever other pattern...
do
  if ! grep -q top_of_header $i
  then
    cat LICENSE_HEADER $i >$i.new && mv $i.new $i
  fi
done