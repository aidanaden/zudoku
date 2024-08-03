const std = @import("std");

extern fn consoleLog(arg: u32) void;

const board_size: usize = 9;

/// `board_size` x `board_size` x `4`, where each pixel is 4 bytes (rgba)
var board_buffer = std.mem.zeroes([board_size][board_size]u8);

/// The returned pointer will be used as an offset integer to the wasm memory
export fn getBoardBufferPtr() [*]u8 {
    return @ptrCast(&board_buffer);
}

export fn getBoardSize() u8 {
    return board_size;
}

export fn colorBoard() void {}
