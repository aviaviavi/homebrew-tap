class Confetti < Formula
  desc "A simple config file swapping tool"
  homepage "https://github.com/aviaviavi/confetti"
  url "https://github.com/aviaviavi/confetti/releases/download/0.0.2/confetti-0.0.2-mac.tar.gz"
  sha256 "1518d34cd100f5ed0ca4311573138fd1b2ce632abe02704a2311a3f9da27ce3f"

  bottle :unneeded

  def install
    bin.install "confetti"
  end

  test do
    system "#{bin}/confetti", "--version"
  end
end
