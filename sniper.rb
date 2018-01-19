class Sniper < Formula
  desc "Patiently waits for iTunes to start and shoots on sight"
  homepage "https://github.com/aviaviavi/sniper"
  url "https://github.com/aviaviavi/sniper/releases/download/v0.0.1-alpha/sniper"
  sha256 "a86397f412382b2bc24098bbc563d4eedac2488b30e49ad02f864d8b12f2744f"

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
        </array>
        <key>KeepAlive</key>
        <true/>
      </dict>
    </plist>
    EOS
  end

end
