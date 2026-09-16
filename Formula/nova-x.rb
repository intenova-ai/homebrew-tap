# Formula/nova-x.rb in intenova-ai/homebrew-tap — RENDERED FILE, do not edit
# there. Source: intenova-ai/nova-x-cli packaging/homebrew/nova-x.rb.tmpl,
# rendered by packaging/homebrew/render_formula.py from the cli-v1.0.0
# release's SHA256SUMS and pushed by .github/workflows/release.yml.
#
# Binary formula: Homebrew downloads the bare executable for the current
# OS/CPU (no archive, so nothing is extracted) and installs it as `nova-x`.
# Homebrew's own download carries no com.apple.quarantine xattr, so the
# unsigned macOS binaries run without a Gatekeeper prompt via brew.
class NovaX < Formula
  desc "Nova X CLI — every platform tool from the terminal"
  homepage "https://app.intenova.ai"
  version "1.0.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/intenova-ai/nova-x-releases/releases/download/cli-v1.0.0/nova-x-macos-arm64"
      sha256 "b3180c7266943ae5e11ffe8ae2b7fb16ff206cbcd67ff960b4b324e39941412a"
    end
    on_intel do
      url "https://github.com/intenova-ai/nova-x-releases/releases/download/cli-v1.0.0/nova-x-macos-x86_64"
      sha256 "d410cde9c0ed31c5f573d31271646505e5376df7ef1cc67117ae997375a5bb10"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/intenova-ai/nova-x-releases/releases/download/cli-v1.0.0/nova-x-linux-arm64"
      sha256 "30773c29afc12c696d9ff0398a57340b747851540da2e106b53142292e7e7f2b"
    end
    on_intel do
      url "https://github.com/intenova-ai/nova-x-releases/releases/download/cli-v1.0.0/nova-x-linux-x86_64"
      sha256 "9f0aface6987db24a1780b66acc4151392799516fdf1e82b72eff30ce8c82322"
    end
  end

  def install
    binary = Dir["nova-x-*"].first
    odie "no nova-x-* binary in the download" if binary.nil?
    chmod 0755, binary
    bin.install binary => "nova-x"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nova-x --version")
  end
end
