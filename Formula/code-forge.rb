class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v1.5.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v1.5.0/forge-x86_64-apple-darwin"
    sha256 "ca4f7db1caf8c83e6d60c1da9ff77a5a54213780e15b69bf0780a2b10424f58b"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v1.5.0/forge-aarch64-apple-darwin"
    sha256 "e7c7e3648fd3de7b8ff2b625bd3770d17ffe77d99e7c865d0841326cac7a1639"
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
