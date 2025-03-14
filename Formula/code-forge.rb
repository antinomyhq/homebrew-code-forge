class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.42.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.42.0/forge-x86_64-apple-darwin"
    sha256 "6dcbd589ecabbaf25b5f0285fbfbdf5b039f048102b692e12227469643cc5598"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.42.0/forge-aarch64-apple-darwin"
    sha256 "2965c56db18af29aff5169dbcfe8e6d35ff64ab36859662acad65b1894f65a24"
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
