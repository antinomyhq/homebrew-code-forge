class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.13.1"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.13.1/forge-x86_64-apple-darwin"
    sha256 "00caf81e19ccf0caa81a234196a7c293a3e4308f42819e25904012ac2c01ca4d"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.13.1/forge-aarch64-apple-darwin"
    sha256 "42ce2a7166a0cdb565792ef800045f9915087b08fd737492e0a60de1ebdceed0"
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
