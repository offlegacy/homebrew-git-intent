class GitIntent < Formula
  desc "Git workflow tool for intentional commits"
  homepage "https://github.com/offlegacy/git-intent"
  license "MIT"
  version "0.0.2"

  on_macos do
    url "https://github.com/offlegacy/git-intent/releases/download/v#{version}/git-intent-#{version}-darwin-amd64.tar.gz"
    sha256 "b519858ffba83811f6e835df240f41c4d47a84af7d190e6099751993a8d3cf8b"
  end

  def install
    mv "git-intent-macos", "git-intent"
    bin.install "git-intent"
  end

  test do
    system "#{bin}/git-intent", "--version"
  end
end