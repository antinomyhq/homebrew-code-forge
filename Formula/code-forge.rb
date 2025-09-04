class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.113.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.113.0/forge-x86_64-apple-darwin"
    sha256 "1c5db8264eb37fdee4ae6edf220399f38bd7806924de1e9d9b34c55e5056a486"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.113.0/forge-aarch64-apple-darwin"
    sha256 "95a7f4624380213aa5eae717c31345e261cfc31b014ff8632737326d429c7b3c"
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
