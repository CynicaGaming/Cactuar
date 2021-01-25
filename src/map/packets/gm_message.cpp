﻿/*
===========================================================================

  Copyright (c) 2010-2015 Darkstar Dev Teams

  This program is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program.  If not, see http://www.gnu.org/licenses/

  This file is part of DarkStar-server source code.

===========================================================================
*/

// This file has been contributed courtesy of Setzor from Eden

#include "../../common/socket.h"

#include <string.h>

#include "gm_message.h"

#include "../entities/charentity.h"


CGMMessagePacket::CGMMessagePacket(CCharEntity * PChar, uint32 timestamp, uint16 count, uint16 total, const std::string& message)
{
    uint8 packetSize;
    uint8 msgSize;

    auto buffSize = std::min<size_t>(message.size(), 244);
    msgSize = (uint8)buffSize;
    if (buffSize < 244) {
        buffSize = ((buffSize + 4 - 1) / 4) * 4; // packet bytes must be wind up a multiple of 4
    }
    packetSize = 8 + ((uint8)buffSize / 2);

    this->type = 0xB6;
    this->size = packetSize;

    ref<uint32>(0x04) = timestamp;
    ref<uint16>(0x08) = count;
    ref<uint16>(0x0A) = total;

    memcpy(data + (0x0C), &message[0], msgSize);

}