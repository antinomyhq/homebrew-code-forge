class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.109.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.109.0/forge-x86_64-apple-darwin"
    sha256 "862c7be01828acdb324a80b83024e1d06f9afc8b037e4f89b71a67153593f5a4"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.109.0/forge-aarch64-apple-darwin"
    sha256 "07fa9cbaf27ae2743be6fff1dca0dc91a51f7c4a61c0960b9b6dfd076b20617b"
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
