class Confetti < Formula
  desc "A simple config file swapping tool"
  homepage "https://github.com/aviaviavi/confetti"
  url "https://github.com/aviaviavi/confetti/releases/download/1.0.1/confetti-1.0.1-mac.tar.gz"
  sha256 "b285984bc423a99059605cbcd25f92343647914c86deacada31cbe02e5bd8070"

  bottle :unneeded

  def install
    bin.install "confetti"
  end

  test do
    system "#{bin}/confetti", "--version"
  end
end
