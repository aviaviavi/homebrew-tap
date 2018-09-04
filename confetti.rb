class Confetti < Formula
  desc "A simple config file swapping tool"
  homepage "https://github.com/aviaviavi/confetti"
  url "https://github.com/aviaviavi/confetti/releases/download/0.3.1/confetti-0.3.1-mac.tar.gz"
  sha256 "da0e0a2ce2007d6394c536517b856b42dd9b95d45cdd091063ba009f0978db47"

  bottle :unneeded

  def install
    bin.install "confetti"
  end

  test do
    system "#{bin}/confetti", "--version"
  end
end
