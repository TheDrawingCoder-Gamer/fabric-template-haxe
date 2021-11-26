if exist "./outjar" rmdir "./outjar" /Q /S
mkdir "./outjar"
cd outjar
jar xf ../out.jar
cd ..