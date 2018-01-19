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

end
