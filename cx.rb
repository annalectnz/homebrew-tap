class Cx < Formula
  desc "CyberCultivation - AI Token Cultivation Terminal Game"
  homepage "https://github.com/leefufufufufu-rgb/homebrew-tap"
  version "1.0.0"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://github.com/leefufufufufu-rgb/homebrew-tap/releases/download/v#{version}/cx-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "1feb41690fa27a59e612db6b18272cd555940295ff4bfed512f54b1453de1364"
    end
    on_intel do
      url "https://github.com/leefufufufufu-rgb/homebrew-tap/releases/download/v#{version}/cx-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "1feb41690fa27a59e612db6b18272cd555940295ff4bfed512f54b1453de1364"
    end
  end

  def install
    bin.install "cx"
  end

  def post_install
    system "codesign", "-s", "-", "#{bin}/cx"
  end

  def caveats
    <<~EOS
      Get started:
        cx init          # Create profile + summon pet
        cx install-hooks # Auto-track AI tokens (Claude Code only)
        cx dz            # Meditate (TUI)
        cx chat          # Chat with your spirit pet
    EOS
  end

  test do
    assert_match "cx", shell_output("#{bin}/cx --version")
  end
end
