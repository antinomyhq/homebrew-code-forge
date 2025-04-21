class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.73.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.73.0/forge-x86_64-apple-darwin"
    sha256 "5e68185bb9fd9c3c0b24d33158fb21bfdfbcc64f7c873a3821790fcb0ff6c82f"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.73.0/forge-aarch64-apple-darwin"
    sha256 "bf5080ea0b81c1fe41bc0cb31661d44bd4984e24035f9141301736ddb5bd0cea"
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
