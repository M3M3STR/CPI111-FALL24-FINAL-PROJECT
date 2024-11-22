/// @description scr_project_shadow
/// @arg _lit_x
/// @arg _lit_y
/// @arg _radius
/// @arg _tilemap_array
/// Project tile's shadows
function scr_project_shadow(_lit_x, _lit_y, _radius, _tilemap_array) {
  // Iterate over each tilemap in the array
  for (var _i = 0; _i < array_length(_tilemap_array); _i++) {
    var _tilemap = _tilemap_array[_i];
    var _tile_size = tilemap_get_tile_width(_tilemap); // Size of a tile

    // Define the range of tiles to process
    var _start_x = floor((_lit_x - _radius) / _tile_size);
    var _end_x = floor((_lit_x + _radius) / _tile_size);
    var _start_y = floor((_lit_y - _radius) / _tile_size);
    var _end_y = floor((_lit_y + _radius) / _tile_size);

    vertex_begin(vertex_buffer, vertex_format);

    for (var _tile_y = _start_y; _tile_y <= _end_y; _tile_y++) {
      for (var _tile_x = _start_x; _tile_x <= _end_x; _tile_x++) {
        var _tile = tilemap_get(_tilemap, _tile_x, _tile_y);
        if (_tile == 1) {
          // Get corners of the tile
          var _top_left_x = _tile_x * _tile_size + 16; // Top-left corner
          var _top_left_y = _tile_y * _tile_size + 16;
          var _bottom_right_x = _top_left_x + _tile_size; // Bottom-right corner
          var _bottom_right_y = _top_left_y + _tile_size;

          // Define edges of the tile: [start_x, start_y, end_x, end_y]
          var _edges = [
            [_top_left_x, _top_left_y, _bottom_right_x, _top_left_y], // Top edge
            [_bottom_right_x, _top_left_y, _bottom_right_x, _bottom_right_y], // Right edge
            [_bottom_right_x, _bottom_right_y, _top_left_x, _bottom_right_y], // Bottom edge
            [_top_left_x, _bottom_right_y, _top_left_x, _top_left_y], // Left edge
          ];

          // Test and project shadows for each edge of the tile
          for (var _edge = 0; _edge < array_length(_edges); _edge++) {
            var _st = _edges[_edge];
            if (!sign_test(_st[0], _st[1], _st[2], _st[3], _lit_x, _lit_y)) {
              scr_project_vertex(
                vertex_buffer,
                _st[0],
                _st[1],
                _st[2],
                _st[3],
                _lit_x,
                _lit_y,
                $000000
              );
            }
          }
        }
      }
    }

    vertex_end(vertex_buffer);
    vertex_submit(vertex_buffer, pr_trianglelist, -1);
  }
}

/// Test whether a shadow line crosses a light source
function sign_test(_ax, _ay, _bx, _by, _light_x, _light_y) {
  return (_bx - _ax) * (_light_y - _ay) - (_by - _ay) * (_light_x - _ax);
}
