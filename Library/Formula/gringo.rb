require 'formula'

class Gringo < Formula
  homepage 'http://potassco.sourceforge.net/'
  url 'http://downloads.sourceforge.net/project/potassco/gringo/4.2.1/gringo-4.2.1-source.tar.gz'
  sha1 'e27790e7d27c54ebb993d97debc01df5c2a4ddd6'

  depends_on 're2c'
  depends_on 'scons'
  depends_on 'bison'

  def install
    system "scons --build-dir=release gringo clingo"
    bin.mkdir
    bin.install "build/release/gringo"
    bin.install "build/release/clingo"
  end
end
