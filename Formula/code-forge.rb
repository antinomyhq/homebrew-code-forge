class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.64.3"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.64.3/forge-x86_64-apple-darwin"
    sha256 "661273da60444cfcf3010a6f717e3b9b1690e693b376e7718f71e278facf12ae"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.64.3/forge-aarch64-apple-darwin"
    sha256 "48786e77deafcc9095ddaed5d4a9e4b8511ec3323df7945dcbd79c44675e499f"
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
