class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.59.2"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.59.2/forge-x86_64-apple-darwin"
    sha256 "aa1997883df0b8ea4801c6a0497805ece0d20e83ad2edc6f7642a837b17390d7"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.59.2/forge-aarch64-apple-darwin"
    sha256 "6515c811f81902b2537484f8b740570312164020e7af74972f09c4d80b84c743"
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
