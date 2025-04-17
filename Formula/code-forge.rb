class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.67.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.67.0/forge-x86_64-apple-darwin"
    sha256 "5d894a0b4f9544f9c21b62eb1d2fd5b3bb55f86e7f564d4b267fadc4121c4fb6"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.67.0/forge-aarch64-apple-darwin"
    sha256 "f05c75bb06c90e6142bf0cab7e2e61420e79e2422af7ece66a6cfc8b99ab2d7a"
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
