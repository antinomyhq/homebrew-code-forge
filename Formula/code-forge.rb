class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.78.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.78.0/forge-x86_64-apple-darwin"
    sha256 "f39201098c7f5d6e284e03f732dd7c68e67e74dd45801937a6bafbb5ec4aaa15"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.78.0/forge-aarch64-apple-darwin"
    sha256 "ee94edca5d37f0c4b79d9dc57a72e9079c4769c7c79c5eb94689870b711d89d4"
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
