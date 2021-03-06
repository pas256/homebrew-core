class Epsilon < Formula
  desc "Powerful wavelet image compressor"
  homepage "http://epsilon-project.sourceforge.net"
  url "https://downloads.sourceforge.net/project/epsilon-project/epsilon/0.9.2/epsilon-0.9.2.tar.gz"
  sha256 "5421a15969d4d7af0ac0a11d519ba8d1d2147dc28d8c062bf0c52f3a0d4c54c4"

  bottle do
    cellar :any
    sha256 "10da057d558d4d9df8c503135b53f7c23778258f7c66d3b39229bf70d9a887f1" => :el_capitan
    sha256 "2811209670e68ab4316e6d177bc1376cb28462cad9b696b4a782deff4074a9ce" => :yosemite
    sha256 "606cb80be8eebf2df61c726ac3e1d91abda3bc49d3c73ca5d07f85b59734069e" => :mavericks
  end

  depends_on "popt"

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make", "install"
  end
end
