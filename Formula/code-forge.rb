class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.5.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.5.0/forge-x86_64-apple-darwin"
    sha256 "b1fbc2e78d0a8f70538f69d3c3733c5d9ef3797e1b8a00c5e1c35ec5614cbf3f"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.5.0/forge-aarch64-apple-darwin"
    sha256 "8b00ae5fb7f09b86177a3040798b3ecbb760cc0cd9d778574149eb717c8ed012"
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
