class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.104.1"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.104.1/forge-x86_64-apple-darwin"
    sha256 "fcd08e575e06f6585385b31c9fc5f2e56f8910ff1165b3c3fa57c65c2be477b7"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.104.1/forge-aarch64-apple-darwin"
    sha256 "1156dc9a4fd96ab37748bd4036a872f221e282850c8fa3c5b11d9abd753036a8"
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
