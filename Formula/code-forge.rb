class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.41.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.41.0/forge-x86_64-apple-darwin"
    sha256 "167c6e7ca8841e240d1e8e1d2d0da12c20ef1748a19fe18634cbfaedf81f6d1f"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.41.0/forge-aarch64-apple-darwin"
    sha256 "5fada728574538df1106c5ac93c70129ec0c8c83fa8285a6e7c528f8fbd888d1"
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
