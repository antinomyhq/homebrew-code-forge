class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v1.18.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v1.18.0/forge-x86_64-apple-darwin"
    sha256 "57f622f73856eb293da54a0e304cdde6fdcbf8ced1ef65d72273d41fc7196970"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v1.18.0/forge-aarch64-apple-darwin"
    sha256 "1b2aa160d5cfbca39ef0b40f18d58c9339ba64783d06f86e435505dee10a5367"
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
