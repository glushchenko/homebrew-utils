class Autolock < Formula
  desc "OS X auto locker when lid closed"
  homepage "https://github.com/glushchenko/mac-autolock"
  url "https://github.com/glushchenko/mac-autolock/archive/1.0.tar.gz"
  sha256 "c1c89c41ccd3f50db88e7dbbefa9f28e8867d6d96d761b26832e54020024ce81"

  bottle :unneeded

  def install
    bin.install "autolock"
  end
  
  plist_options :startup => true

  def plist; <<-EOS.undent
    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE plist PUBLIC "-//Apple Computer//DTD PLIST 1.0//EN" 
        "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
    <plist version="1.0">
    <dict>
        <key>Label</key>
    	<string>#{plist_name}</string>
        <key>ProgramArguments</key>
    	<array>
    	    <string>{opt_bin}/autolock</string>
    	    <string>start</string>
    	</array>
        <key>RunAtLoad</key>
    	<true/>
        <key>KeepAlive</key>
    	<true/>
    </dict>
    </plist>
    EOS
  end
end
