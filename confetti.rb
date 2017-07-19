class Confetti < Formula
  desc "A simple config file swapping tool"
  homepage "https://github.com/aviaviavi/confetti"
  url "https://github.com/aviaviavi/confetti/releases/download/0.3/confetti-0.3-mac.tar.gz"
  sha256 "550fb3aa858ab3799ca342ac5f0407b98b64632ac1b9fd3ac9ac4567aea39834"

  bottle :unneeded

  def install
    bin.install "confetti"
  end

  test do
    system "#{bin}/confetti", "--version"
  end
end
