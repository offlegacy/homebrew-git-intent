class GitIntent < Formula
  desc "Git workflow tool for intentional commits"
  homepage "https://github.com/offlegacy/git-intent"
  license "MIT"
  version "0.0.7"

  on_macos do
    url "https://github.com/offlegacy/git-intent/releases/download/v#{version}/git-intent-#{version}-darwin-amd64.tar.gz"
    sha256 "39f4198d060df77b40bd4af3645ababed7ac08c8ed3da48e07638c4f018b3079"
  end

  def install
    bin.install "git-intent"
  end

  test do
    system "#{bin}/git-intent", "--version"
  end
end