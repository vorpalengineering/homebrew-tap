class Vorpal < Formula
  desc "CLI tool for the Vorpal Engineering security platform"
  homepage "https://github.com/vorpalengineering/cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vorpalengineering/cli/releases/download/v#{version}/vorpal-v#{version}-darwin-arm64.tar.gz"
      sha256 "461da297c73aafaf2983056333c8cbb618e2957fcd9b6af2ef21eba6c73689ca"
    else
      url "https://github.com/vorpalengineering/cli/releases/download/v#{version}/vorpal-v#{version}-darwin-amd64.tar.gz"
      sha256 "eda56439fed8e822932d7f9f34943bdfc3764cf34745a3be1c5f8a04f9ec46ed"
    end
  end

  on_linux do
    url "https://github.com/vorpalengineering/cli/releases/download/v#{version}/vorpal-v#{version}-linux-amd64.tar.gz"
    sha256 "5a27fb505bcb8be8461134ac1ac996a0fb02861043217e3ced2dea742c8da94f"
  end

  def install
    bin.install "vorpal"
  end

  test do
    assert_match "Vorpal Engineering CLI", shell_output("#{bin}/vorpal version")
  end
end
