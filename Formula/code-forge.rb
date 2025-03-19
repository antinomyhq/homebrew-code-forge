class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.48.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.48.0/forge-x86_64-apple-darwin"
    sha256 "3734ced39715b94debea33aea63324b622367697dce78d77cab507881eecb319"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.48.0/forge-aarch64-apple-darwin"
    sha256 "c1b93cf706fadebf03effd7f5c8ee2044fb8a3f6faf099b0fa82dc9846d9cb93"
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
