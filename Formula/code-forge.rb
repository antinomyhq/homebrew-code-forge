class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.110.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.110.0/forge-x86_64-apple-darwin"
    sha256 "eb925bf6610d4501a635f70075ea188d8b42ec150085ff1439fbb4b190609483"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.110.0/forge-aarch64-apple-darwin"
    sha256 "2dce73d9ef0983c16c21431f718507f07fcf1cef3374332860e082bf1847af7e"
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
