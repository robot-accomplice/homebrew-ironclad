# typed: false
# frozen_string_literal: true

class Ironclad < Formula
  desc "Autonomous agent runtime — single binary, streaming LLM, semantic caching, zero-trust A2A"
  homepage "https://roboticus.ai"
  license "Apache-2.0"
  version "0.9.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/robot-accomplice/ironclad/releases/download/v0.9.7/ironclad-0.9.7-aarch64-darwin.tar.gz"
      sha256 "81b40afe8adf1be2e0ec8cc8e900ca11834df951440e70aee5b45f7a85d6ce78"
    else
      url "https://github.com/robot-accomplice/ironclad/releases/download/v0.9.7/ironclad-0.9.7-x86_64-darwin.tar.gz"
      sha256 "f65c65b8d9b3bcd15abe4f802a87eeb7428b6f87727ca14bc45157540e80f1dc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/robot-accomplice/ironclad/releases/download/v0.9.7/ironclad-0.9.7-aarch64-linux.tar.gz"
      sha256 "31df095589c21deba9372bb72179a3584c2828820c00b909abfb0935b555ec57"
    else
      url "https://github.com/robot-accomplice/ironclad/releases/download/v0.9.7/ironclad-0.9.7-x86_64-linux.tar.gz"
      sha256 "44a0737640f49b6f5f14e8d6e1b0f78513e831818ce051fe33b4517fe891f132"
    end
  end

  def install
    bin.install "ironclad"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ironclad version")
  end
end
