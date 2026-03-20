# typed: false
# frozen_string_literal: true

class Roboticus < Formula
  desc "Autonomous agent runtime — single binary, streaming LLM, semantic caching, zero-trust A2A"
  homepage "https://roboticus.ai"
  license "Apache-2.0"
  version "0.9.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/robot-accomplice/roboticus/releases/download/v0.9.9/roboticus-0.9.9-aarch64-darwin.tar.gz"
      sha256 "0346b62287aaa03b3bb654580b857caf7b846887b6c697b58467f29f63729d5d"
    else
      url "https://github.com/robot-accomplice/roboticus/releases/download/v0.9.9/roboticus-0.9.9-x86_64-darwin.tar.gz"
      sha256 "0ec2bdf92dc1b1bd138d20e2d2d7fd6ce20185631841e7b2017c69513e6470a7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/robot-accomplice/roboticus/releases/download/v0.9.9/roboticus-0.9.9-aarch64-linux.tar.gz"
      sha256 "72a00a070fbef6408af7b3b3db518cd5a89c103755ded346252d9ad40d1f4df9"
    else
      url "https://github.com/robot-accomplice/roboticus/releases/download/v0.9.9/roboticus-0.9.9-x86_64-linux.tar.gz"
      sha256 "773304626875aac9cd71313059875a6f26017e3887c8d26f13e9266bc0cc5437"
    end
  end

  def install
    bin.install "roboticus"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/roboticus version")
  end
end
