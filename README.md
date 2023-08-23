# plaso-timeline
Creating plaso timeline using log2timeline.py

example command line

In this example I used Ubuntu 20 as linux subsystem on my Windows 10 machine.  I have a Treadripper processor with a 128 ram and a terrabyt of disk space. As for 512gb image took around 4hrs of plaso processing.

Copy / Paste the command below, but change the {hostname} with your evidence hostname

this includes $MFT
log2timeline.py -z UTC --partition all --hashers md5,sha1,sha256 --hasher_file_size_limit 20480000 --parsers 'win7_slow,sqlite' --process_memory_limit 10000000000 --worker-memory-limit 10000000000 --workers 54 --storage-file /mnt/d/{hostname}/plaso/{hostname}-plaso2.dump /mnt/d/{hostname}.e01

this does not include $MFT
log2timeline.py -z UTC --parsers 'win7,!filestat,sqlite' --process_memory_limit 10000000000 --worker-memory-limit 10000000000 --workers 54 --storage-file /mnt/c/Cases/SIR0038243/plaso/W-PF36K23C-C-plaso.dump /mnt/c/Cases/SIR0038243/hdd-SIR0038243-2023-06-30/W-PF36K23C-C-decrypted.E01

PS C:\Tools\ez\net6> .\MFTECmd.exe -f "C:\Cases\SIR0038243\mft_timeline\D\`$MFT" --body "C:\Cases\SIR0038243\mft_timeline\" --bodyf "C:\Cases\SIR0038243\mft_timeline\mft.body" --blf --bdl C:

log2timeline.py --parsers 'bodyfile' --storage-file /mnt/c/Cases/SIR0038243/plaso/W-PF36K23C-C-plaso.dump /mnt/c/Cases/SIR0038243/mft_timeline/mft.body


Once completed use, Eric Zimmerman's tool Timeline Explorer 

download here -
https://f001.backblazeb2.com/file/EricZimmermanTools/net6/TimelineExplorer.zip

the complete tools are here -
https://ericzimmerman.github.io/#!index.md
