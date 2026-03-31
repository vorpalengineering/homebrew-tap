class Vorpal < Formula
  desc "CLI tool for the Vorpal Engineering security platform"
  homepage "https://github.com/vorpalengineering/cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vorpalengineering/cli/releases/download/v#{version}/vorpal-v#{version}-darwin-arm64.tar.gz"
      sha256 "66b6b009064e67a8587dc7de52671a311be3834e6bfdeb9895041a9534a6ee4c"
    else
      url "https://github.com/vorpalengineering/cli/releases/download/v#{version}/vorpal-v#{version}-darwin-amd64.tar.gz"
      sha256 "d32602983fc58fdbb2f78e4d98aba1e156c646d27aab923e2f9f7d080adf8a7d"
    end
  end

  on_linux do
    url "https://github.com/vorpalengineering/cli/releases/download/v#{version}/vorpal-v#{version}-linux-amd64.tar.gz"
    sha256 "9e4830149659c904103c42e5c2ad1a657077f3e077911c40e74715e1b5297db9"
  end

  def install
    bin.install "vorpal"
  end

  test do
    assert_match "Vorpal Engineering CLI", shell_output("#{bin}/vorpal version")
  end
end
