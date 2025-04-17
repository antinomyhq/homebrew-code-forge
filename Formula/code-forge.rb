class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.66.2"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.66.2/forge-x86_64-apple-darwin"
    sha256 "ead0c0a483c97e8dd29b6e94eca85261ab686a48f26db03bf2deb7793cf8ab0e"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.66.2/forge-aarch64-apple-darwin"
    sha256 "6f2c8a2383c71fcdf0b03a01756531a382c5cf3934f775d4480a6768476195e1"
  end

  def install
    if Hardware::CPU.intel?
        executable_name = "forge-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "forge-aarch64-apple-darwin"
    end
    bin.install executable_name => "forge"
  end
end
