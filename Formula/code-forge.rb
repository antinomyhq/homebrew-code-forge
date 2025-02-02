class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.2.6"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.2.6/forge-x86_64-apple-darwin"
    sha256 "ee05026730d18e8dd13b1483171c34862aa2b3a9b0c69b58009e116b334c3545"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.2.6/forge-aarch64-apple-darwin"
    sha256 "394be41f0cbb03d9f546ed6087ffb16007660d30073e932a35c500dd5c2226c1"
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
