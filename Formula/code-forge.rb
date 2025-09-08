class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.115.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.115.0/forge-x86_64-apple-darwin"
    sha256 "692b60f516a94e0abb2adeae1dff23b2c7dd5cc9d7f3d19faa7ce1d8e2f5f923"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.115.0/forge-aarch64-apple-darwin"
    sha256 "21311d5a5aee426aa7d0133cc4ca8ae9b99bc5f3b186c842345129d14acc94e9"
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
