class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.13.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.13.0/forge-x86_64-apple-darwin"
    sha256 "8bf1496393730011e96a972f75b5d809c2e4038381d6067a5e977442e2741f0b"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.13.0/forge-aarch64-apple-darwin"
    sha256 "b5e27712c8f1efdbcb9ff944b221f2bb6c3dc010af547667a95795abd7304401"
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
