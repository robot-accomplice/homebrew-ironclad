# typed: false
# frozen_string_literal: true

class Roboticus < Formula
  desc "Autonomous agent runtime — single binary, streaming LLM, semantic caching, zero-trust A2A"
  homepage "https://roboticus.ai"
  license "Apache-2.0"
  version "0.11.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/robot-accomplice/roboticus/releases/download/v0.11.3/roboticus-0.11.3-aarch64-darwin.tar.gz"
      sha256 "3ded0dd7c7fe9b1ccd3832a29484f04c6ae8c7b6b88da61db6f2bf868645c8da"
    else
      url "https://github.com/robot-accomplice/roboticus/releases/download/v0.11.3/roboticus-0.11.3-x86_64-darwin.tar.gz"
      sha256 "ad680faf6ae9b98df39562c4c6b092c4eb7ba1213660e8cf69b9ac493e95629c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/robot-accomplice/roboticus/releases/download/v0.11.3/roboticus-0.11.3-aarch64-linux.tar.gz"
      sha256 "4c3698f35b0fd616f7a4f645c62117ace770b72e11720fb5ac15222efa223630"
    else
      url "https://github.com/robot-accomplice/roboticus/releases/download/v0.11.3/roboticus-0.11.3-x86_64-linux.tar.gz"
      sha256 "6a84ed7d9d75fdb9c6db884c801f6f11215d0ebf6a96bd58bfa2d279f3ac1933"
    end
  end

  def install
    bin.install "roboticus"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/roboticus version")
  end
end
