class Vorpal < Formula
  desc "CLI tool for the Vorpal Engineering Blockchain Intelligence Platform"
  homepage "https://github.com/vorpalengineering/cli"
  version "0.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vorpalengineering/cli/releases/download/v#{version}/vorpal-v#{version}-darwin-arm64.tar.gz"
      sha256 "f4f205cc3bb6ea7baa0dfe42de0d0514bcfadf3c67641a1e06cb4324fb7e3200"
    else
      url "https://github.com/vorpalengineering/cli/releases/download/v#{version}/vorpal-v#{version}-darwin-amd64.tar.gz"
      sha256 "f8f537d15aa326bba9aedcb71d9a1ce477ce9d4df278f1af66e97ecfba44f790"
    end
  end

  on_linux do
    url "https://github.com/vorpalengineering/cli/releases/download/v#{version}/vorpal-v#{version}-linux-amd64.tar.gz"
    sha256 "d0e2703c8bd73e4d9e5a9a4a310543fb6f2857a21b8ee34b7ec4b52cb0b4ee1f"
  end

  def install
    bin.install "vorpal"
  end

  test do
    assert_match "Vorpal Engineering CLI", shell_output("#{bin}/vorpal version")
  end
end
