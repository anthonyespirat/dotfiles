hl.bind("ALT + R", hl.dsp.submap("resize"))

-- Start a submap called "resize".
-- OMITTED: submap = resize
-- OMITTED: binde = , right, resizeactive, 50 0
-- OMITTED: binde = , left, resizeactive, -50 0
-- OMITTED: binde = , up, resizeactive, 0 -50
-- OMITTED: binde = , down, resizeactive, 0 50
-- Reason: Missing documentation for resizeactive specific properties and standard define_submap usage.

hl.bind("escape", hl.dsp.submap("reset"), { submap = "resize" })
