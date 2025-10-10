class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.124.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.124.0/forge-x86_64-apple-darwin"
    sha256 "ec7f1e728dbb38a7b02823a32f5a90d632e5ba36af60eb57359b184a3f3c7dbf"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.124.0/forge-aarch64-apple-darwin"
    sha256 "4d304c9b125ab153ba37c6bfebb9c5f1b2fbf58a84cbfcc6b61f253de840a331"
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
