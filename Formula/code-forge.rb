class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.36.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.36.0/forge-x86_64-apple-darwin"
    sha256 "eef8673a21655535566943b4c86afa0182a3e8044fe7143b9506270429447634"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.36.0/forge-aarch64-apple-darwin"
    sha256 "ae0626acd3a0233ece299586eae523254b0a5f1a5ff61afd9717cec29fd2b642"
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
