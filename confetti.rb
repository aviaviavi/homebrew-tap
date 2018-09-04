class Confetti < Formula
  desc "A simple config file swapping tool"
  homepage "https://github.com/aviaviavi/confetti"
  url "https://github.com/aviaviavi/confetti/releases/download/0.3.1/confetti-0.3.1-mac.tar.gz"
  sha256 "1edafcc5f6c9ab0835edb9d3d48b3edde1b14021ab79da69cbc67d58b91a055b"

  bottle :unneeded

  def install
    bin.install "confetti"
  end

  test do
    system "#{bin}/confetti", "--version"
  end
end
