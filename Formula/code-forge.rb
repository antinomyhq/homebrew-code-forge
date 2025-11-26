class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v1.7.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v1.7.0/forge-x86_64-apple-darwin"
    sha256 "2e0bf5f8eaf2ef0393e4884030fb88d83b78211be8fceb49ba6a2069be319592"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v1.7.0/forge-aarch64-apple-darwin"
    sha256 "8d959b48808046d934029bb580c88ca0fcce2cb050f9eabf7dcf4f3bcb3676d6"
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
