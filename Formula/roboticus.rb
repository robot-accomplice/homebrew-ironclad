# typed: false
# frozen_string_literal: true

class Roboticus < Formula
  desc "Autonomous agent runtime — single binary, streaming LLM, semantic caching, zero-trust A2A"
  homepage "https://roboticus.ai"
  license "Apache-2.0"
  version "0.11.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/robot-accomplice/roboticus/releases/download/v0.11.0/roboticus-0.11.0-aarch64-darwin.tar.gz"
      sha256 "0b33eadb9bf673e4d823fa904099175df436fb2f46201b6b5ae4c94df102c366"
    else
      url "https://github.com/robot-accomplice/roboticus/releases/download/v0.11.0/roboticus-0.11.0-x86_64-darwin.tar.gz"
      sha256 "befeaa69fced01ac955bcbf84b55f59130757c4a29edbf273a7e331c992f42f9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/robot-accomplice/roboticus/releases/download/v0.11.0/roboticus-0.11.0-aarch64-linux.tar.gz"
      sha256 "13a8e86e78697205138557b1b62b5aee8b3773d44c708bea6654b17fbf801bca"
    else
      url "https://github.com/robot-accomplice/roboticus/releases/download/v0.11.0/roboticus-0.11.0-x86_64-linux.tar.gz"
      sha256 "16b4a873ec87aad7af353f3ce85eae8aa7fb841a8e7e6cd12f41e55e3705550f"
    end
  end

  def install
    bin.install "roboticus"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/roboticus version")
  end
end
