class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v1.20.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v1.20.0/forge-x86_64-apple-darwin"
    sha256 "e5ad9d36b7fcd42e50a183f7238fe125685c39fa55167e45e5e82fb1f6ee3c0d"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v1.20.0/forge-aarch64-apple-darwin"
    sha256 "1119d33f61a9e46500c09fb58aadacdc5a289fe1b8990f2f679ef1e7d11aaf85"
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
