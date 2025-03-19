class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.50.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.50.0/forge-x86_64-apple-darwin"
    sha256 "c8ce9567b4f1997159b08f343b5bde308b3f79e7f62d20f7900aa3dc26e8ffdc"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.50.0/forge-aarch64-apple-darwin"
    sha256 "83f8fc0305327df3e75a30fa6aa365565ff0dd4d733272bf7b6bbaeb6f842dee"
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
