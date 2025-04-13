class GitIntent < Formula
  desc "Git workflow tool for intentional commits"
  homepage "https://github.com/offlegacy/git-intent"
  license "MIT"
  version "0.0.1"

  on_macos do
    url "https://github.com/offlegacy/git-intent/releases/download/v#{version}/git-intent-#{version}-darwin-amd64.tar.gz"
    sha256 "b3d439458253f2f14586587451a3665989fa415550873e14cd0f24bceeaab44e"
  end

  def install
    bin.install "git-intent"
  end

  test do
    system "#{bin}/git-intent", "--version"
  end
end
