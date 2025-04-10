class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.62.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.62.0/forge-x86_64-apple-darwin"
    sha256 "6c8ce202cf9a2a398d77fcf248f43f866eec306c308212f23219b4d541cb4ce6"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.62.0/forge-aarch64-apple-darwin"
    sha256 "8d8c3df0aa61ef8ae4b2f39c9bb2e4b46e7461cc372d2ee6d7ec03a3dcfe4155"
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
