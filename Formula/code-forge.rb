class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.28.1"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.28.1/forge-x86_64-apple-darwin"
    sha256 "858871b8ef69fdcedf7b36e792b5989aea0b496e1ad41245fec8c9241c635d65"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.28.1/forge-aarch64-apple-darwin"
    sha256 "7563b8f7be69a6301dca51659d78ef53b6ff86016721934e2c7e9de67ee9e826"
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
