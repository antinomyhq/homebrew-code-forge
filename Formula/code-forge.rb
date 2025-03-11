class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.36.2"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.36.2/forge-x86_64-apple-darwin"
    sha256 "71bd2e727dee11d462e49eea6cabb56041a64de24b8b3725935a327005eb0433"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.36.2/forge-aarch64-apple-darwin"
    sha256 "26dd79aa17e89bccaf094754d388b10d8f6abaf53f6f38e75f4d2776265e0db5"
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
