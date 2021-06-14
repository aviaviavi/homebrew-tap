class Sniper < Formula
  desc "Patiently waits for iTunes to start and shoots on sight"
  homepage "https://github.com/aviaviavi/sniper"
  url "https://github.com/aviaviavi/sniper/releases/download/v0.0.2-alpha/sniper"
  sha256 "5ae5291fba2df28b1eba1d335851cbc22d1251db3cbb19cf94684b579541b744"

  bottle :unneeded

  def install
    bin.install "sniper"
  end

  test do
    system "false"
  end

  plist_options :manual => "sniper"

  def plist; <<~EOS
    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
    <plist version="1.0">
      <dict>
        <key>KeepAlive</key>
        <dict>
          <key>SuccessfulExit</key>
          <false/>
        </dict>
        <key>Label</key>
        <string>#{plist_name}</string>
        <key>ProgramArguments</key>
        <array>
        <string>#{opt_bin}/sniper</string>
        </array>
        <key>KeepAlive</key>
        <true/>
      </dict>
    </plist>
    EOS
  end

end
