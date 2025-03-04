class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.28.2"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.28.2/forge-x86_64-apple-darwin"
    sha256 "9afd98a18599e31206d5e950a9ef29c000f1455f4c86c3c75fba3880a40bdaf2"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.28.2/forge-aarch64-apple-darwin"
    sha256 "92f7b62a4817cb5f2518e0ac48877425de878dc41d9148c278fbbb6f00153758"
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
