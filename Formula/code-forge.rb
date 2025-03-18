class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.47.3"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.47.3/forge-x86_64-apple-darwin"
    sha256 "621b3b3468b75e247bec12e10d4e7cec00e7d2ae0764fbdee30948e184824b1f"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.47.3/forge-aarch64-apple-darwin"
    sha256 "770e61c8281f5686b4643b6c0831cd4da31efe29a3cbc83dfa6a7b59b3f6ae12"
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
