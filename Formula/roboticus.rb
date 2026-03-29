# typed: false
# frozen_string_literal: true

class Roboticus < Formula
  desc "Autonomous agent runtime — single binary, streaming LLM, semantic caching, zero-trust A2A"
  homepage "https://roboticus.ai"
  license "Apache-2.0"
  version "0.11.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/robot-accomplice/roboticus/releases/download/v0.11.1/roboticus-0.11.1-aarch64-darwin.tar.gz"
      sha256 "3ad1d5147b207f5ae6d94aa38d5e2d28bdbcbc8197fdbed274ffcaa9dfcd3bc5"
    else
      url "https://github.com/robot-accomplice/roboticus/releases/download/v0.11.1/roboticus-0.11.1-x86_64-darwin.tar.gz"
      sha256 "b277341d7fe2f013e94e2fb590dc25eea4afd9ccca6c33caea92592f736749d9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/robot-accomplice/roboticus/releases/download/v0.11.1/roboticus-0.11.1-aarch64-linux.tar.gz"
      sha256 "2185c9e4af3dc6016d1e983f1ef7c2dafc34da5fe347b8b44971d6003753a000"
    else
      url "https://github.com/robot-accomplice/roboticus/releases/download/v0.11.1/roboticus-0.11.1-x86_64-linux.tar.gz"
      sha256 "b317ff87c6f48bf875b9c4faa338a76bdd8f1beef588466f38f35875d4b081c2"
    end
  end

  def install
    bin.install "roboticus"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/roboticus version")
  end
end
