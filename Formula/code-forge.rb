class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.78.2"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.78.2/forge-x86_64-apple-darwin"
    sha256 "c3b14b3cfc17bfbb77d4ad330ce878a3f5f54690de4c86fff565f0645dbce9d9"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.78.2/forge-aarch64-apple-darwin"
    sha256 "2d460d76fa3294fef12dfc26338442a04419bcb0cf75f409977036f2826714b8"
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
