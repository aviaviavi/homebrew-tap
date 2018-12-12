class Confetti < Formula
  desc "A simple config file swapping tool"
  homepage "https://github.com/aviaviavi/confetti"
  url "https://github.com/aviaviavi/confetti/releases/download/1.0.0/confetti-1.0.0-mac.tar.gz"
  sha256 "aea6d79c3e475d1e0ccf034a1903789a65ef3851b0b9d0c453af408ff40a76fa"

  bottle :unneeded

  def install
    bin.install "confetti"
  end

  test do
    system "#{bin}/confetti", "--version"
  end
end
