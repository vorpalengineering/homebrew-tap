class Vorpal < Formula
  desc "CLI tool for the Vorpal Engineering security platform"
  homepage "https://github.com/vorpalengineering/cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vorpalengineering/cli/releases/download/v#{version}/vorpal-v#{version}-darwin-arm64.tar.gz"
      sha256 "01765876cc35c705296aeed37d23f7c7378e220b98df44bd604397992fa1fb6b"
    else
      url "https://github.com/vorpalengineering/cli/releases/download/v#{version}/vorpal-v#{version}-darwin-amd64.tar.gz"
      sha256 "08a40b657b17f873a75011ebf53e5259fa3e5fea8ca6ddeca618d7103aa1e922"
    end
  end

  on_linux do
    url "https://github.com/vorpalengineering/cli/releases/download/v#{version}/vorpal-v#{version}-linux-amd64.tar.gz"
    sha256 "bb99e4079a292e5ab312f28c6bc2e9ab11d56511a7acd372cd8878ec50625bd0"
  end

  def install
    bin.install "vorpal"
  end

  test do
    assert_match "Vorpal Engineering CLI", shell_output("#{bin}/vorpal version")
  end
end
