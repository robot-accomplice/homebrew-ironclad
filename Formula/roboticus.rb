# typed: false
# frozen_string_literal: true

class Roboticus < Formula
  desc "Autonomous agent runtime — single binary, streaming LLM, semantic caching, zero-trust A2A"
  homepage "https://roboticus.ai"
  license "Apache-2.0"
  version "0.11.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/robot-accomplice/roboticus/releases/download/v0.11.4/roboticus-0.11.4-aarch64-darwin.tar.gz"
      sha256 "6059d643b177cf3341fa58f45ff464ad07a8e15dc00f3694154a0a4462dbb5b3"
    else
      url "https://github.com/robot-accomplice/roboticus/releases/download/v0.11.4/roboticus-0.11.4-x86_64-darwin.tar.gz"
      sha256 "2f67c2ac420e20151e35b740e19de40ddee8620e3139a8c4e9a778e0fd959d70"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/robot-accomplice/roboticus/releases/download/v0.11.4/roboticus-0.11.4-aarch64-linux.tar.gz"
      sha256 "073f5d7a21bfb590d537515911b52cf01ce5a3c1a20ab380ee8f1bf5d3016ef8"
    else
      url "https://github.com/robot-accomplice/roboticus/releases/download/v0.11.4/roboticus-0.11.4-x86_64-linux.tar.gz"
      sha256 "ae126ed1803fd7393fedfdcac438fe2453ff5abe6e956d06fa3c2c474f3989ff"
    end
  end

  def install
    bin.install "roboticus"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/roboticus version")
  end
end
