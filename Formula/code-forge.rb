class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.59.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.59.0/forge-x86_64-apple-darwin"
    sha256 "150ed5961bf878d13af0ea3dddea273af9f26b94cadedd279331733edd6f9bf6"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.59.0/forge-aarch64-apple-darwin"
    sha256 "a483a06caaab354af1e40123ee78fee61a0d03a7864342294aa763407d4910bd"
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
