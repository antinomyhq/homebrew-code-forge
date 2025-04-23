class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.75.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.75.0/forge-x86_64-apple-darwin"
    sha256 "f6034e574da9a8c11b8a2559883dcad9050d295ac8da6cf1b273f5c174b709ab"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.75.0/forge-aarch64-apple-darwin"
    sha256 "1f5d7f06df01f7696a39ed224ebcd1269f2871d4a01afcff154c713e47884cbf"
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
