class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.11.1"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.11.1/forge-x86_64-apple-darwin"
    sha256 "00aa46a0c337c8a3ebcbcc3e478e4cd26cab23a70cf68dbf094fad35259fa647"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.11.1/forge-aarch64-apple-darwin"
    sha256 "864af2083d14aae48105bcfd7e80f1311c3ba2be7482c0ab5ff7deb5e5ab12f2"
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
