class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.90.1"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.90.1/forge-x86_64-apple-darwin"
    sha256 "d270e9ad1b5816a8d3a37d9283ece33794c20c83b7639926e68846b106a137ff"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.90.1/forge-aarch64-apple-darwin"
    sha256 "eaa34d6c1d64f9e68e033ddb37d64d1ff952620f883701e7f0cb032205b64b3b"
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
