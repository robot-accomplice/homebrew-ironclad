# typed: false
# frozen_string_literal: true

class Ironclad < Formula
  desc "Autonomous agent runtime — single binary, streaming LLM, semantic caching, zero-trust A2A"
  homepage "https://roboticus.ai"
  license "Apache-2.0"
  version "0.9.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/robot-accomplice/ironclad/releases/download/v0.9.6/ironclad-0.9.6-aarch64-darwin.tar.gz"
      sha256 "39f8142a8c34c96a793e663cec077cc41ee8eb5c2faeb62b912c156a3f208d5f"
    else
      url "https://github.com/robot-accomplice/ironclad/releases/download/v0.9.6/ironclad-0.9.6-x86_64-darwin.tar.gz"
      sha256 "c9e795da40247f0ab54be4e647e9e78fa83be3032721e9a25d6d9c25dfd4e35e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/robot-accomplice/ironclad/releases/download/v0.9.6/ironclad-0.9.6-aarch64-linux.tar.gz"
      sha256 "6d481bc5fcd88dac25ad13ecb5995db8d3f7c36e138bf8f13344a4c4cf3f5518"
    else
      url "https://github.com/robot-accomplice/ironclad/releases/download/v0.9.6/ironclad-0.9.6-x86_64-linux.tar.gz"
      sha256 "7a2dda1f7df04b1b45ac9409f8dd9a3ae2b403ceb9d8f25f06c6b91f1e8099d6"
    end
  end

  def install
    bin.install "ironclad"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ironclad version")
  end
end
