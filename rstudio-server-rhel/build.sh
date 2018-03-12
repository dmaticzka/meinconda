# unpack rpm
rpm2cpio rstudio-server-rhel-1.1.423-x86_64.rpm | cpio -idmv

# setup directories
mkdir -p $PREFIX/bin
mkdir -p $PREFIX/share/rstudio

# manually distribute files
cp -rv usr/lib/rstudio-server/bin/* $PREFIX/bin
cp -rv \
usr/lib/rstudio-server/R \
usr/lib/rstudio-server/resources \
usr/lib/rstudio-server/www \
usr/lib/rstudio-server/www-symbolmaps \
usr/lib/rstudio-server/extras \
usr/lib/rstudio-server/COPYING \
usr/lib/rstudio-server/INSTALL \
usr/lib/rstudio-server/NOTICE \
usr/lib/rstudio-server/README.md \
usr/lib/rstudio-server/SOURCE \
usr/lib/rstudio-server/VERSION \
$PREFIX/share/rstudio/

