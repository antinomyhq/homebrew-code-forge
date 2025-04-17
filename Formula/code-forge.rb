class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.68.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.68.0/forge-x86_64-apple-darwin"
    sha256 "80005047c444c0613ef5627a013f7da027d70880e0ba5853ef97068482c86fc6"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.68.0/forge-aarch64-apple-darwin"
    sha256 "21e5f6c29ecdbeb623220a035753bc6c9b072f9df4a92973d6315bd38b36a0fe"
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
