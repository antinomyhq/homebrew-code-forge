class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.3.3"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.3.3/forge-x86_64-apple-darwin"
    sha256 "22fc6ca3fca689c81a800d99652faf272858aabf7dae02709e7fe4a04f576c29"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.3.3/forge-aarch64-apple-darwin"
    sha256 "e529d742db0762edade98f5f18636ff5b0df170295657d8535a8d85dfe0ac383"
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
