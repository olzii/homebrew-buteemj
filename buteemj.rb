# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Buteemj < Formula
  desc "buteemj app"
  homepage "http://www.starsoft.mn"
  url "https://github.com/olzii/buteemj/archive/v1.0.3.tar.gz"
  sha256 "9f8ba1c06ce2c5bcd173a36a552340b82e65df1cd768c1d10fc8aa2d2fc6228f"
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
	# system "install"
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
	  bin.install "main"
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
    system "false"
	# system "#{bin}/buteemj-macos", "--version"
  end
end
