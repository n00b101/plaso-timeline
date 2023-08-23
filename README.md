# plaso-timeline
Creating plaso timeline using log2timeline.py

example command line

In this example I used Ubuntu 20 as linux subsystem on my Windows 10 machine.  I have a Treadripper processor with a 128 ram and a terrabyt of disk space. As for 512gb image took around 4hrs of plaso processing.

Copy / Paste the command below, but change the {hostname} with your evidence hostname

log2timeline.py -z UTC --partition all --hashers md5,sha1,sha256 --hasher_file_size_limit 20480000 --parsers 'win7_slow,sqlite' --process_memory_limit 10000000000 --worker-memory-limit 10000000000 --workers 54 --storage-file /mnt/d/{hostname}/plaso/{hostname}-plaso2.dump /mnt/d/{hostname}.e01


Once completed use, Eric Zimmerman's tool Timeline Explorer 

download here -
https://f001.backblazeb2.com/file/EricZimmermanTools/net6/TimelineExplorer.zip

the complete tools are here -
https://ericzimmerman.github.io/#!index.md
