class Confetti < Formula
  desc "A simple config file swapping tool"
  homepage "https://github.com/aviaviavi/confetti"
  url "https://github.com/aviaviavi/confetti/releases/download/0.0.1-test/confetti-0.0.1-mac.tar.gz"
  sha256 "649c31c2c2f6e97099518cac28a26b279b4d52c3c6d28a7a53d952e52a3d2bc8"

  bottle :unneeded

  def install
    bin.install "confetti"
  end

  test do
    system "#{bin}/confetti", "--version"
  end
end
