class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.101.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.101.0/forge-x86_64-apple-darwin"
    sha256 "6479b8b9ad0f2ddee1ca7fc9b3aecb4b3864fa972e7e147c35cf1d53445728f5"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.101.0/forge-aarch64-apple-darwin"
    sha256 "8f5e9091b29be8fcb5c5733ee608455b0e7cbce61c92fb8a0f44d96fb2dbf517"
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
