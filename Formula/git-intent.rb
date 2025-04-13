class GitIntent < Formula
  desc "Git workflow tool for intentional commits"
  homepage "https://github.com/offlegacy/git-intent"
  license "MIT"
  version "0.0.3"

  on_macos do
    url "https://github.com/offlegacy/git-intent/releases/download/v#{version}/git-intent-#{version}-darwin-amd64.tar.gz"
    sha256 "9d180199c83702c90a8b25ac64c30a8893e60859ee2ff7f86f0ed98126e4fde5"
  end

  def install
    mv "git-intent-macos", "git-intent"
    bin.install "git-intent"
  end

  test do
    system "#{bin}/git-intent", "--version"
  end
end