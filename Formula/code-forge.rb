class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.16.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.16.0/forge-x86_64-apple-darwin"
    sha256 "b396346a23e116439f3cbdc3c75c9706c462385dab328b2c39c8b19b007f23a4"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.16.0/forge-aarch64-apple-darwin"
    sha256 "5a906a28d60532c2afe4b3b81f4beffda0b0a28dab289e10b8330b7c38aca688"
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
