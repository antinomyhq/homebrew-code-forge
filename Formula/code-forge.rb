class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v1.23.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v1.23.0/forge-x86_64-apple-darwin"
    sha256 "7520e908e7eef6b4cb450fc2d0530d7ee647be91d9727b2437b0499d68e8e561"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v1.23.0/forge-aarch64-apple-darwin"
    sha256 "d6dffae71d5b458377d7a055cf5888a2d6031f732fd14c5970a7c4365ebd57ef"
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
