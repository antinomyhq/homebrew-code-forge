class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.29.1"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.29.1/forge-x86_64-apple-darwin"
    sha256 "47587e828c96e35255e16b4bf5444ea144df90279c51a536a147dad2c5864eb7"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.29.1/forge-aarch64-apple-darwin"
    sha256 "80880bc75f3ec0e60f14d549d1b682c2c8ffe094c670ae12c878e4ecd8ce778b"
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
