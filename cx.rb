class Cx < Formula
  desc "CyberCultivation - AI Token Cultivation Terminal Game"
  homepage "https://github.com/leefufufufufu-rgb/cyber-cultivator"
  version "1.0.0"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://github.com/leefufufufufu-rgb/cyber-cultivator/releases/download/v#{version}/cx-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "3f193f4cfb4876a4a1da35f3d6b812f17a3dbac30e21b925cd6f37de4a35906f"
    end
    on_intel do
      url "https://github.com/leefufufufufu-rgb/cyber-cultivator/releases/download/v#{version}/cx-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER_INTEL"
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
        cx install-hooks # Auto-track AI tokens
        cx dz            # Meditate (TUI)
        cx chat          # Chat with your spirit pet

      Theme: cx config set theme light  (for light terminals)
    EOS
  end

  test do
    assert_match "cx", shell_output("#{bin}/cx --version")
  end
end
