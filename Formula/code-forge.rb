class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.52.2"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.52.2/forge-x86_64-apple-darwin"
    sha256 "cd72424e3462370c4eb5aeca940a370e8586cae9ffe036b0a447d72f3bca0bb6"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.52.2/forge-aarch64-apple-darwin"
    sha256 "4cfeddfc7480ad6d0a265f50a488bdcf2bd63a50f66dd1833adcbf065f8e5e66"
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
