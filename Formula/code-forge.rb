class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.102.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.102.0/forge-x86_64-apple-darwin"
    sha256 "54167bb190d5ebe6af806f81e9420341bb28368cdfc1dd290b1a845b6aab760a"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.102.0/forge-aarch64-apple-darwin"
    sha256 "b97869728c2649b69c9126480da347ea8cef28bb80f1f8ef5b0e565bcbfd62a2"
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
