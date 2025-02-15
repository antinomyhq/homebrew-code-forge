class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.21.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.21.0/forge-x86_64-apple-darwin"
    sha256 "aee32d90aed49aadb5b2e115244afe7d1fb7556686f022c652a8ea0e8d9dea0b"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.21.0/forge-aarch64-apple-darwin"
    sha256 "db378cf014d0149e670e76836487232ee3976863fe20b952ded2ef13ebabed70"
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
