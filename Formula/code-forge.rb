class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.38.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.38.0/forge-x86_64-apple-darwin"
    sha256 "75c744f87d62951ec4bdbc75ba5f91aa9ba5f0d0bff5418fdebd8645ee92eee2"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.38.0/forge-aarch64-apple-darwin"
    sha256 "05f49b0472662652c446fd2b69a4d1ba2157dcec40782f2c8c357885dfb8bff7"
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
