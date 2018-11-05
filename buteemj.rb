# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Buteemj < Formula
  desc "buteemj app"
  homepage ""
  url "https://github.com/olzii/buteemj/archive/v1.0.1.tar.gz"
  sha256 "e974b05b8c7a87340c45d91a84ee83254359461010d62c4c45822fd27723577c"
  # depends_on "cmake" => :build

  def install
    	# ENV.deparallelize  # if your formula fails when building in parallel
    	# Remove unrecognized options if warned by configure
    #system "./configure", "--disable-debug",
    #                      "--disable-dependency-tracking",
    #                      "--disable-silent-rules",
    #                      "--prefix=#{prefix}"
    # system "cmake", ".", *std_cmake_args
    # system "make", "install" # if this fails, try separate make/make install steps
	#bin.install "buteemj-macos"
	#bin.install Dir["*"]
	#prefix.install "buteemj-macos"

	  bin.install "binding.node"
	  bin.install "config.json"
	  bin.install "ffi_bindings.node"

	  bin.install "iconv.node"
	  bin.install "node_sqlite3.node"
	  bin.install "screenshot.node"
	  bin.install "snapshot.dat"
	  bin.install "buteemj-macos"

	#  system "install"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test buteemj`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    # system "false"
	  system "#{bin}/buteemj", "--version"
  end
end
