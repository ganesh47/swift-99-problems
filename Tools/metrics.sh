#!/usr/bin/env bash
if [[ "$OSTYPE" == "darwin"* ]]; then
  prefixCmd=""
else
  prefixCmd="--posix"
fi
swift test --enable-code-coverage | tee >(grep 'measured'| sed $prefixCmd -r s/\"/\'/g | sed -r "s/(.*): Test Case \'?\-?\[?(.*)\]? measured \[(.*)\] (.*)/{\"source\":\"\1\",\"test\":\"\2\", \"measures\": \"\3\", \"values\": \"\4\" }/g" >metrics.json)