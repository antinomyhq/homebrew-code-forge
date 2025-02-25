class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.25.1"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.25.1/forge-x86_64-apple-darwin"
    sha256 "123f718dee71fc4daa467b86f8e82c174bb740a3e8a324f4c1c362d5e96ecdaf"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.25.1/forge-aarch64-apple-darwin"
    sha256 "1b436f3859bb168e01441d8668e2f9049d5a1d2286b04a3bbd15c4e4293bb44a"
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
