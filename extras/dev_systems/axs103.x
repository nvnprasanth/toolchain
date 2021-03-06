/* ARC AXS103 SDP */

MEMORY
{
    SRAM  : ORIGIN = 0x00000000, LENGTH = 256K
    DRAM  : ORIGIN = 0x80000000, LENGTH = 1024M
}

REGION_ALIAS("startup", SRAM)
REGION_ALIAS("text", DRAM)
REGION_ALIAS("data", DRAM)
REGION_ALIAS("sdata", DRAM)

PROVIDE (__stack_top = (0xBFFFFFFF & -4) );
PROVIDE (__end_heap = (0xBFFFFFFF) );
