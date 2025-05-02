class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.80.1"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.80.1/forge-x86_64-apple-darwin"
    sha256 "ede360d567049922b9aab76b1eb70821b789569750575ae16614edd9587a556e"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.80.1/forge-aarch64-apple-darwin"
    sha256 "7813a5be6ffbf3e8c35d4ae76c72682fd24b82326c9bd079fd86b1462e335765"
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
