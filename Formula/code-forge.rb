class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.100.4"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.100.4/forge-x86_64-apple-darwin"
    sha256 "7d50c65eb546f79acd07b73b201a6ad87d0b5a4cb7525c36a5f997bcc7838deb"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.100.4/forge-aarch64-apple-darwin"
    sha256 "b7c6e6abac207dc6f14c6fca7bb4787b43dadb0a37433d878ce1e0d8176301ae"
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
