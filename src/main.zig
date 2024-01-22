const std = @import("std");

pub fn main() !void {
    // Grabbing the system hooks
    const std_out_file    = std.io.getStdOut().writer();
    var   std_out_buffer  = std.io.bufferedWriter(std_out_file);
    const std_out_context = std_out_buffer.writer();
    // Creating the "context" to write to the buffer
    try std_out_context.print("Buffered: Hello, World!\n", .{});
    // Now actually outputting the buffer
    try std_out_buffer.flush();
    // Keep in mind we can always directly write to the buffer.
    // try std_out_file.print("Instant: Hello, World!\n", .{});

    // Now let's set up a client
}
