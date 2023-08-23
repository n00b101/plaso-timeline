example command line

In this example I used Ubuntu 20 as linux subsystem on my Windows 10 machine.  I have a treadripper processor with a 128 ram and a terrabyt of disk space.

log2timeline.py -z UTC --partition all --hashers md5,sha1,sha256 --hasher_file_size_limit 20480000 --parsers 'win7_slow,sqlite' --process_memory_limit 10000000000 --worker-memory-limit 10000000000 --workers 54 --storage-file /mnt/d/{hostname}/plaso/{hostname}-plaso2.dump /mnt/d/{hostname}/{hostname}.e01
