class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.78.1"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.78.1/forge-x86_64-apple-darwin"
    sha256 "72667b328e2f9e9ddedb0b5a8698438838ec12547e2050d08e73e745f193ea70"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.78.1/forge-aarch64-apple-darwin"
    sha256 "9f707fb5160a979484d4aeca8ec4a3d7ca661ed72d849f2d35aeb93c198ba893"
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
