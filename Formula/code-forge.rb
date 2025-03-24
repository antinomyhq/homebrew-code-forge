class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.51.5"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.51.5/forge-x86_64-apple-darwin"
    sha256 "20c23eda0c4f8da39490bc3df96eef9f0fcb15d731aba2d5dc29568cb27a4655"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.51.5/forge-aarch64-apple-darwin"
    sha256 "2bf6764da3d986c4fcd83988897be8a03aaef1fd0c657de693b32b8cad72eac1"
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
