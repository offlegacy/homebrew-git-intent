class GitIntent < Formula
  desc "Git workflow tool for intentional commits"
  homepage "https://github.com/offlegacy/git-intent"
  license "MIT"
  version "0.0.6"

  on_macos do
    url "https://github.com/offlegacy/git-intent/releases/download/v#{version}/git-intent-#{version}-darwin-amd64.tar.gz"
    sha256 "8e3e98da9b0688707e9190eb2e00140d0d1c4547660b52b995783206c13e5677"
  end

  def install
    bin.install "git-intent"
  end

  test do
    system "#{bin}/git-intent", "--version"
  end
end