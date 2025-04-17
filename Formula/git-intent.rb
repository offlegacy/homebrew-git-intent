class GitIntent < Formula
  desc "Git workflow tool for intentional commits"
  homepage "https://github.com/offlegacy/git-intent"
  license "MIT"
  version "0.0.10"

  on_macos do
    url "https://github.com/offlegacy/git-intent/releases/download/v#{version}/git-intent-#{version}-darwin-amd64.tar.gz"
    sha256 "69539770907e9c6ca00c06cea38df4eb262eb4f70bfb0c844cb0b932416b51ce"
  end

  def install
    bin.install "git-intent"
  end

  test do
    system "#{bin}/git-intent", "--version"
  end
end