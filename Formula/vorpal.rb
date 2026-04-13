class Vorpal < Formula
  desc "CLI tool for the Vorpal Engineering Blockchain Intelligence Platform"
  homepage "https://github.com/vorpalengineering/cli"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vorpalengineering/cli/releases/download/v#{version}/vorpal-v#{version}-darwin-arm64.tar.gz"
      sha256 "8032abebf8497700277fc0d51beef93924253a1a377dff3156de79735bd225e5"
    else
      url "https://github.com/vorpalengineering/cli/releases/download/v#{version}/vorpal-v#{version}-darwin-amd64.tar.gz"
      sha256 "cfcda5e9666aa61bfa149c18e547c61f205af3ece2747582268fa138cb88e1c6"
    end
  end

  on_linux do
    url "https://github.com/vorpalengineering/cli/releases/download/v#{version}/vorpal-v#{version}-linux-amd64.tar.gz"
    sha256 "48791a523607e91565e27189e0d6ff19ab862cb88aea1a2f63f3a7c1df7307a7"
  end

  def install
    bin.install "vorpal"
  end

  test do
    assert_match "Vorpal Engineering CLI", shell_output("#{bin}/vorpal version")
  end
end
