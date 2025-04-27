class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.78.6"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.78.6/forge-x86_64-apple-darwin"
    sha256 "8caa0d3b2ba23e0c9be781c4823547b7e2556e8da10af939eb218e6bc394a603"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.78.6/forge-aarch64-apple-darwin"
    sha256 "c61b29eabf6d2cfb58c72ece738c404c95259c4afcede9b138e05446d418ce0a"
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
