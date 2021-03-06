﻿--[=======[
-------- -------- -------- --------
  Tencent SSO 2  >>>> TLV >>>> 0310
-------- -------- -------- --------

SSO2::TLV_ServerAddress_0x310
]=======]

local dissectors = require "TXSSO2/Dissectors";

dissectors.tlv = dissectors.tlv or {};


dissectors.tlv[0x0310] = function( buf, pkg, root, t, off, size )
  local oo = off;
  off = dissectors.add( t, buf, off, ">dwServerIP D" );
  dissectors.addex( t, buf, off, size - ( off - oo ) );
end