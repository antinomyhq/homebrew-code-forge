class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.2.7"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.2.7/forge-x86_64-apple-darwin"
    sha256 "f6aae43f0369f59f4fee0dedb040d2b44bfc1e28ba493696c2b3486cdb844480"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.2.7/forge-aarch64-apple-darwin"
    sha256 "cc45dc48af50ad776eee3c9e72aca97946864d2452bd624bd8111f29a0eacad2"
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
