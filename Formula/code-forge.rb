class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.92.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.92.0/forge-x86_64-apple-darwin"
    sha256 "ff5f9bce2670c768efcd0888bb4cebc165f9dbafbe84278a4b2161036946c008"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.92.0/forge-aarch64-apple-darwin"
    sha256 "cb44fd94971c6169167ae99829dd5e23529001dffbff561730abb163ca6a4b0b"
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
