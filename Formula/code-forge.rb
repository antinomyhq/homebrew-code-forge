class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.102.2"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.102.2/forge-x86_64-apple-darwin"
    sha256 "cc420e189b65b21d9553bf591daebd03564678d51d901420f5a0afc10b4b9cdc"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.102.2/forge-aarch64-apple-darwin"
    sha256 "96efeeabc45056ee79c95875d27b2f6e7e3bbfd0d0f2aaca291cf70832dc0294"
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
