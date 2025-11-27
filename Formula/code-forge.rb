class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v1.8.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v1.8.0/forge-x86_64-apple-darwin"
    sha256 "2ed99d36fd7bbafc5c90f080c82dba52651a3b82fba4ad9639ed71952ec912c4"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v1.8.0/forge-aarch64-apple-darwin"
    sha256 "026eba8c08506b34f2af3086fa62a12dc683149637544af519343121636fd725"
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
