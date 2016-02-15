class Autolock < Formula
  desc "OS X auto locker when lid closed"
  homepage "https://github.com/glushchenko/mac-autolock"
  url "https://github.com/glushchenko/mac-autolock/archive/1.0.tar.gz"
  sha256 "b622f55b35abd9b0f6e9fc96c6e4adf1b7739cbde8b3a182cd24bbe206aa3c5c"

  bottle :unneeded

  def install
    bin.install "autolock"
  end
end
