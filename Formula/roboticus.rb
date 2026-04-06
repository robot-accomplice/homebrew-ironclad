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
      sha256 "d0ec118ddaf40b70e618323674b46db947d1a2c76a732ab4e5ae2fb80532c4cc"
    else
      url "https://github.com/robot-accomplice/roboticus/releases/download/v0.11.4/roboticus-0.11.4-x86_64-darwin.tar.gz"
      sha256 "44811a6294605ad2d73bb093356aa205851c55e41464189e3fb7930ba0b7ded5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/robot-accomplice/roboticus/releases/download/v0.11.4/roboticus-0.11.4-aarch64-linux.tar.gz"
      sha256 "8bb17a6036cf1714a6781c07986051fcba5cf0e0f1b5909fdabc32e6dbf152cd"
    else
      url "https://github.com/robot-accomplice/roboticus/releases/download/v0.11.4/roboticus-0.11.4-x86_64-linux.tar.gz"
      sha256 "be161c38f2d04f42f60ebb5153915eda4fb875f3b6974805738a7af3970946a6"
    end
  end

  def install
    bin.install "roboticus"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/roboticus version")
  end
end
