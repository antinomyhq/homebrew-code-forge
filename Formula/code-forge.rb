class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.97.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.97.0/forge-x86_64-apple-darwin"
    sha256 "d347eafa7073e8011ecbdfbcb2f39c4ae51aaefc94ba1c4d51d6c94ad9cb0098"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.97.0/forge-aarch64-apple-darwin"
    sha256 "1412bac8cd2157ddc161dabad08451344acb567f6467c792c9378aceabaebf89"
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
