class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.1.3"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.1.3/forge-x86_64-apple-darwin"
    sha256 "3f1e8880ba7d6d8d04a50d072717468b41b600276be471e92eecf25f0f37356c"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.1.3/forge-aarch64-apple-darwin"
    sha256 "9e8792da91d801d41329caac59c431cc6edaa53bb3fb000a2eacb7ec84c8db40"
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
