class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v1.17.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v1.17.0/forge-x86_64-apple-darwin"
    sha256 "4fc73b5a9e45a1438fbf92ba302a9fd231d684bd8eefd08a9e8d8f9bc78b0cc3"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v1.17.0/forge-aarch64-apple-darwin"
    sha256 "2cb14208768c02e8da7cb7a1e3120c4daf5267225f9213853cf116a950923be0"
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
