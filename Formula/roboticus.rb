# typed: false
# frozen_string_literal: true

class Roboticus < Formula
  desc "Autonomous agent runtime — single binary, streaming LLM, semantic caching, zero-trust A2A"
  homepage "https://roboticus.ai"
  license "Apache-2.0"
  version "0.11.2+hotfix.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/robot-accomplice/roboticus/releases/download/v0.11.2+hotfix.1/roboticus-0.11.2+hotfix.1-aarch64-darwin.tar.gz"
      sha256 "c3b9dee73aecdb7b6fbb485983b3668d6ea74ca669015ce00683a2f3b1b2fc2f"
    else
      url "https://github.com/robot-accomplice/roboticus/releases/download/v0.11.2+hotfix.1/roboticus-0.11.2+hotfix.1-x86_64-darwin.tar.gz"
      sha256 "0bc72f2d781173a6d279d3e08d59facc50a67c3b8a36d49f34f0c544cffb8cb9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/robot-accomplice/roboticus/releases/download/v0.11.2+hotfix.1/roboticus-0.11.2+hotfix.1-aarch64-linux.tar.gz"
      sha256 "b804e45f4d23c529ceb7e50bd5d32efe2b459576edbb93f40350409e6c61044a"
    else
      url "https://github.com/robot-accomplice/roboticus/releases/download/v0.11.2+hotfix.1/roboticus-0.11.2+hotfix.1-x86_64-linux.tar.gz"
      sha256 "128271bfd27c2b06be73547ab00d2d2278f0709bf9298f7241dc0fd454dfe6f7"
    end
  end

  def install
    bin.install "roboticus"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/roboticus version")
  end
end
