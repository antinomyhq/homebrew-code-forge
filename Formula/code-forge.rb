class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.81.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.81.0/forge-x86_64-apple-darwin"
    sha256 "ecc9956a22b16d865f4e9cd30b522eb2ddef090fd6f4cf41c02f3fa90642986f"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.81.0/forge-aarch64-apple-darwin"
    sha256 "281ece5c65e251e25180c773a2558de3f0b5dae1a306c8a9dd6a17d7192719ad"
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
