docker run -it --rm                                                     \
  --volume /mnt/sr_disks/bak01/sr_root/rsy_bak:/usr/local/etc/rsy_bak.d \
  --volume /mnt/sr_disks/bak01/sr_root/rsy_bak-logs:/var/log/rsy_bak    \
  --volume /var/lib/docker/volumes:/mnt/src/docker                      \
  --volume                    /opt:/mnt/src/opt                         \
  --volume             /home/shawn:/mnt/src/shawn                       \
  --volume     /etc/systemd/system:/mnt/src/systemd                     \
  --volume /mnt/sr_disks/bak01:/mnt/dst                                 \
  --volume rsy_bak.ssh:/root/.ssh                                       \
  --volume /etc/localtime:/etc/localtime:ro                             \
  --env DEFAULT_DSTROOT="/mnt/dst/sr_root/bu"                           \
  longranger406/rsy_bak $@
  #--entrypoint=sh \
