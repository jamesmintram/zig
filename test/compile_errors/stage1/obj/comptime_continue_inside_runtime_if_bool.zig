export fn entry() void {
    var p: usize = undefined;
    comptime var q = true;
    inline while (q) {
        if (p == 11) continue;
        q = false;
    }
}

// comptime continue inside runtime if bool
//
// tmp.zig:5:22: error: comptime control flow inside runtime block
// tmp.zig:5:9: note: runtime block created here
