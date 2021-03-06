require 'formula'

class Libicns < Formula
  url 'http://downloads.sourceforge.net/project/icns/icns/libicns-0.7.1/libicns-0.7.1.tar.gz'
  homepage 'http://icns.sourceforge.net/'
  md5 'ff4624353a074c6cb51e41d145070e10'

  depends_on 'jasper'	# or openjpeg

  def install
    ENV.libpng
    ENV.universal_binary	# build fat so wine can use it

    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end
end
