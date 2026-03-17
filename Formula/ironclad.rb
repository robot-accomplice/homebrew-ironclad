# typed: false
# frozen_string_literal: true

class Ironclad < Formula
  desc "Autonomous agent runtime — single binary, streaming LLM, semantic caching, zero-trust A2A"
  homepage "https://roboticus.ai"
  license "Apache-2.0"
  version "0.9.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/robot-accomplice/ironclad/releases/download/v0.9.8/ironclad-0.9.8-aarch64-darwin.tar.gz"
      sha256 "1bee1991089bcb9a4f594a551fa831a463d9ac2c16e438b000a2108d5ca21943"
    else
      url "https://github.com/robot-accomplice/ironclad/releases/download/v0.9.8/ironclad-0.9.8-x86_64-darwin.tar.gz"
      sha256 "d76b1052648d98ba185ecc55752368d28c9c694c86deba4620a0a310a4fcdf1c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/robot-accomplice/ironclad/releases/download/v0.9.8/ironclad-0.9.8-aarch64-linux.tar.gz"
      sha256 "cc8db4c7ac2cdfec84defc0a14d9a720b08e571cfe337cc7d310c317af917ed6"
    else
      url "https://github.com/robot-accomplice/ironclad/releases/download/v0.9.8/ironclad-0.9.8-x86_64-linux.tar.gz"
      sha256 "09cf7c390a4613c311813d0449f3bc8c7be30e87f44150ee646283d4dee13db9"
    end
  end

  def install
    bin.install "ironclad"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ironclad version")
  end
end
