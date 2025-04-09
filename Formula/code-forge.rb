class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.61.1"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.61.1/forge-x86_64-apple-darwin"
    sha256 "6d13ced8069661ab230c5d04520f5776549859ee877e77553e37a2f2445ab190"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.61.1/forge-aarch64-apple-darwin"
    sha256 "6a8d0f4dcf682e55e0becf5a65651d8385a6a81c48e00e3e3c63fb083c2054fa"
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
