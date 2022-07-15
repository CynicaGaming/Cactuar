/*
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

===========================================================================
*/

#include "../../common/socket.h"

#include <string.h>

#include "char_jobs.h"
#include "../entities/charentity.h"
#include "../utils/charutils.h"




CCharJobsPacket::CCharJobsPacket(CCharEntity* PChar, bool resetflips)
{
    this->type = 0x1B;
    this->size = 0x34;

    ref<uint8>(0x04) = PChar->look.race;

    if (map_config.dual_main_job || map_config.all_jobs_dual_wield)
    {
        if (resetflips)
        {
            charutils::SetCharVar(PChar, "JobFlipState", 0);

            ref<uint8>(0x08) = PChar->GetMJob(); // подсвечиваем желтым главную профессию
            ref<uint8>(0x0B) = PChar->GetSJob(); // подсвечиваем синим дополнительную профессию
        }
        else
        {
            uint8 flipstate = (uint8)charutils::GetCharVar(PChar, "JobFlipState");

            if (flipstate == 0) // not flipped
            {
                ref<uint8>(0x08) = PChar->GetMJob();
                ref<uint8>(0x0B) = PChar->GetSJob();
            }

            else if (map_config.dual_main_job && (flipstate == 1)) // flipped
            {
                ref<uint8>(0x08) = PChar->GetSJob();
                ref<uint8>(0x0B) = PChar->GetMJob();
            }

            else if (map_config.all_jobs_dual_wield && (flipstate == 2)) // dw workaround
            {
                ref<uint8>(0x08) = PChar->GetMJob();
                ref<uint8>(0x0B) = (JOBTYPE)6; // thf
            }
        }
    }
    else
    {
        // Tonberry customizations disabled
        ref<uint8>(0x08) = PChar->GetMJob(); // Highlight the main job in Yellow
        ref<uint8>(0x0B) = PChar->GetSJob(); // Highlight the sub job in Blue
    }

    memcpy(data + (0x0C), &PChar->jobs, 22);

    memcpy(data + (0x20), &PChar->stats, 14);
    memcpy(data + (0x44), &PChar->jobs, 27);

    ref<uint32>(0x3C) = PChar->health.hp;
    ref<uint32>(0x40) = PChar->health.mp;

    ref<uint32>(0x44) = PChar->jobs.unlocked & 1; // первый бит в unlocked отвечает за дополнительную профессию

    ref<uint16>(0x60) = PChar->m_EquipBlock; // Locked equipment slots
    ref<uint16>(0x62) =
        PChar->m_StatsDebilitation; // Bit field. Underestimation of physical characteristics, the characteristic turns red and a red arrlow appears next to it.

    ref<uint8>(0x64) = 0x01; // Unknown, set due to Retail reference; suspicion around mentor unlock
    ref<uint8>(0x66) = 0x01; // Mastery Rank (In Profile Menu)
}
