class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.123.1"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.123.1/forge-x86_64-apple-darwin"
    sha256 "de8feff10c0c5ecf21439193053a87be5eeae07d403a780df4fb81cf0d2d0bb5"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.123.1/forge-aarch64-apple-darwin"
    sha256 "51da6339f5f821032100be0f5a49db5e1c3f645bb17364ccdb6fd90f8f7354f1"
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
