osm2graph
=========

Converter from OSM to a proper road graph


Keep the dependencies up-to-date with:

pip install -r requirements.txt


All kinds of nice OSM python stuff: https://pypi.python.org/pypi?%3Aaction=search&term=openstreetmap&submit=search



== IMPOSM INSTALLATION GUIDE ==


http://imposm.org/docs/imposm/latest/


Install protobuf: https://code.google.com/p/protobuf/downloads/list

https://protobuf.googlecode.com/files/protobuf-2.5.0.tar.bz2
 tar xfvj protobuf-2.5.0.tar.bz2
 cd protobuf-2.5.0
 ./configure CC=clang CXX=clang++ CXXFLAGS='-std=c++11 -stdlib=libc++ -O3 -g' LDFLAGS='-stdlib=libc++' LIBS="-lc++ -lc++abi"
 make -j 4
 sudo make install

 brew install tokyo-cabinet
 brew install geos
 brew install protobuf



