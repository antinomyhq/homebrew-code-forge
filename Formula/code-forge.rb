class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.79.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.79.0/forge-x86_64-apple-darwin"
    sha256 "b2b20f819f6293edb82d8903e35ba6b11529af92dc5385878fd5487a97e1cb44"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.79.0/forge-aarch64-apple-darwin"
    sha256 "0923c244a4ec8383a77e264164fb6d32b3f158cfbf1584d1ca37d9300f2e1c0a"
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
