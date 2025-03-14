class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.43.2"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.43.2/forge-x86_64-apple-darwin"
    sha256 "a5a977747dc967f3b019cbe559ac5687f58143129172146b7d40828831898b64"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.43.2/forge-aarch64-apple-darwin"
    sha256 "38f57e4859969dd6d233fb5df73b2515187d997499dbfadda273d6b5e926ad6a"
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
