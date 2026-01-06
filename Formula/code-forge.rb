class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v1.16.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v1.16.0/forge-x86_64-apple-darwin"
    sha256 "6ce1259aa9bda751155ae20d401048f5914a5c0f7e198b9718ea5a9ef4f40a9c"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v1.16.0/forge-aarch64-apple-darwin"
    sha256 "077e569ebb128f235c5dbde9018ae611782e688762f831d50b1d2124aa4703c5"
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
