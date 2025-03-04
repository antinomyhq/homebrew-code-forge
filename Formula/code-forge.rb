class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.29.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.29.0/forge-x86_64-apple-darwin"
    sha256 "a3486d97816921f63aeca71bb2f46762a49bcb5bee5e0f7393c689e43b28a072"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.29.0/forge-aarch64-apple-darwin"
    sha256 "0f5689856534510742a1e11a1da2be878fe96b352abf7c8f62751c1d0cc9215d"
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
