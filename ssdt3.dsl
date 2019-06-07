/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190509 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT3.aml, Fri Jun  7 20:00:21 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000BE3 (3043)
 *     Revision         0x02
 *     Checksum         0xCE
 *     OEM ID           "INTEL "
 *     OEM Table ID     "Ther_Rvp"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120913 (538052883)
 */
DefinitionBlock ("", "SSDT", 2, "INTEL ", "Ther_Rvp", 0x00001001)
{
    External (_PR_.AAC0, FieldUnitObj)
    External (_PR_.ACRT, FieldUnitObj)
    External (_PR_.APSV, FieldUnitObj)
    External (_PR_.CPU0, ProcessorObj)
    External (_PR_.CPU1, ProcessorObj)
    External (_PR_.CPU2, ProcessorObj)
    External (_PR_.CPU3, ProcessorObj)
    External (_PR_.CPU4, ProcessorObj)
    External (_PR_.CPU5, ProcessorObj)
    External (_PR_.CPU6, ProcessorObj)
    External (_PR_.CPU7, ProcessorObj)
    External (_PR_.DTS1, FieldUnitObj)
    External (_PR_.DTS2, FieldUnitObj)
    External (_PR_.DTS3, FieldUnitObj)
    External (_PR_.DTS4, FieldUnitObj)
    External (_PR_.DTSE, FieldUnitObj)
    External (_PR_.PDTS, FieldUnitObj)
    External (_PR_.PKGA, FieldUnitObj)
    External (_SB_.PCI0.LPCB.H_EC.ECAV, IntObj)
    External (_SB_.PCI0.LPCB.H_EC.ECMD, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECMT, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.ECRD, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECWT, MethodObj)    // 2 Arguments
    External (_SB_.PCI0.LPCB.H_EC.PECH, IntObj)
    External (_SB_.PCI0.LPCB.H_EC.PECL, IntObj)
    External (_SB_.PCI0.LPCB.H_EC.PENV, IntObj)
    External (_SB_.PCI0.LPCB.H_EC.PLMX, IntObj)
    External (AC0F, FieldUnitObj)
    External (AC1F, FieldUnitObj)
    External (ACT1, FieldUnitObj)
    External (ACTT, FieldUnitObj)
    External (CRTT, FieldUnitObj)
    External (CTYP, FieldUnitObj)
    External (PSVT, FieldUnitObj)
    External (TC1V, FieldUnitObj)
    External (TC2V, FieldUnitObj)
    External (TCNT, FieldUnitObj)
    External (TSPV, FieldUnitObj)
    External (VFN0, FieldUnitObj)
    External (VFN1, FieldUnitObj)
    External (VFN2, FieldUnitObj)
    External (VFN3, FieldUnitObj)
    External (VFN4, FieldUnitObj)

    Scope (\_TZ)
    {
        Name (ETMD, One)
        Event (FCET)
        Name (FCRN, Zero)
        Mutex (FCMT, 0x00)
        Name (CVF0, Zero)
        Name (CVF1, Zero)
        Name (CVF2, Zero)
        Name (CVF3, Zero)
        Name (CVF4, Zero)
        Mutex (FMT0, 0x00)
        Mutex (FMT1, 0x00)
        Mutex (FMT2, 0x00)
        Mutex (FMT3, 0x00)
        Mutex (FMT4, 0x00)
        PowerResource (FN00, 0x00, 0x0000)
        {
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                Local1 = Zero
                Local0 = Acquire (FMT0, 0x03E8)
                If ((Local0 == Zero))
                {
                    Local1 = CVF0 /* \_TZ_.CVF0 */
                    Release (FMT0)
                }

                Return (Local1)
            }

            Method (_ON, 0, Serialized)  // _ON_: Power On
            {
                Local0 = Acquire (FMT0, 0x03E8)
                If ((Local0 == Zero))
                {
                    CVF0 = One
                    Release (FMT0)
                }

                FNCL ()
            }

            Method (_OFF, 0, Serialized)  // _OFF: Power Off
            {
                Local0 = Acquire (FMT0, 0x03E8)
                If ((Local0 == Zero))
                {
                    CVF0 = Zero
                    Release (FMT0)
                }

                FNCL ()
            }
        }

        Device (FAN0)
        {
            Name (_HID, EisaId ("PNP0C0B") /* Fan (Thermal Solution) */)  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                FN00
            })
        }

        PowerResource (FN01, 0x00, 0x0000)
        {
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                Local1 = Zero
                Local0 = Acquire (FMT1, 0x03E8)
                If ((Local0 == Zero))
                {
                    Local1 = CVF1 /* \_TZ_.CVF1 */
                    Release (FMT1)
                }

                Return (Local1)
            }

            Method (_ON, 0, Serialized)  // _ON_: Power On
            {
                Local0 = Acquire (FMT1, 0x03E8)
                If ((Local0 == Zero))
                {
                    CVF1 = One
                    Release (FMT1)
                }

                FNCL ()
            }

            Method (_OFF, 0, Serialized)  // _OFF: Power Off
            {
                Local0 = Acquire (FMT1, 0x03E8)
                If ((Local0 == Zero))
                {
                    CVF1 = Zero
                    Release (FMT1)
                }

                FNCL ()
            }
        }

        Device (FAN1)
        {
            Name (_HID, EisaId ("PNP0C0B") /* Fan (Thermal Solution) */)  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                FN01
            })
        }

        PowerResource (FN02, 0x00, 0x0000)
        {
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                Local1 = Zero
                Local0 = Acquire (FMT2, 0x03E8)
                If ((Local0 == Zero))
                {
                    Local1 = CVF2 /* \_TZ_.CVF2 */
                    Release (FMT2)
                }

                Return (Local1)
            }

            Method (_ON, 0, Serialized)  // _ON_: Power On
            {
                Local0 = Acquire (FMT2, 0x03E8)
                If ((Local0 == Zero))
                {
                    CVF2 = One
                    Release (FMT2)
                }

                FNCL ()
            }

            Method (_OFF, 0, Serialized)  // _OFF: Power Off
            {
                Local0 = Acquire (FMT2, 0x03E8)
                If ((Local0 == Zero))
                {
                    CVF2 = Zero
                    Release (FMT2)
                }

                FNCL ()
            }
        }

        Device (FAN2)
        {
            Name (_HID, EisaId ("PNP0C0B") /* Fan (Thermal Solution) */)  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                FN02
            })
        }

        PowerResource (FN03, 0x00, 0x0000)
        {
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                Local1 = Zero
                Local0 = Acquire (FMT3, 0x03E8)
                If ((Local0 == Zero))
                {
                    Local1 = CVF3 /* \_TZ_.CVF3 */
                    Release (FMT3)
                }

                Return (Local1)
            }

            Method (_ON, 0, Serialized)  // _ON_: Power On
            {
                Local0 = Acquire (FMT3, 0x03E8)
                If ((Local0 == Zero))
                {
                    CVF3 = One
                    Release (FMT3)
                }

                FNCL ()
            }

            Method (_OFF, 0, Serialized)  // _OFF: Power Off
            {
                Local0 = Acquire (FMT3, 0x03E8)
                If ((Local0 == Zero))
                {
                    CVF3 = Zero
                    Release (FMT3)
                }

                FNCL ()
            }
        }

        Device (FAN3)
        {
            Name (_HID, EisaId ("PNP0C0B") /* Fan (Thermal Solution) */)  // _HID: Hardware ID
            Name (_UID, 0x03)  // _UID: Unique ID
            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                FN03
            })
        }

        PowerResource (FN04, 0x00, 0x0000)
        {
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                Local1 = Zero
                Local0 = Acquire (FMT4, 0x03E8)
                If ((Local0 == Zero))
                {
                    Local1 = CVF4 /* \_TZ_.CVF4 */
                    Release (FMT4)
                }

                Return (Local1)
            }

            Method (_ON, 0, Serialized)  // _ON_: Power On
            {
                Local0 = Acquire (FMT4, 0x03E8)
                If ((Local0 == Zero))
                {
                    CVF4 = One
                    Release (FMT4)
                }

                FNCL ()
            }

            Method (_OFF, 0, Serialized)  // _OFF: Power Off
            {
                Local0 = Acquire (FMT4, 0x03E8)
                If ((Local0 == Zero))
                {
                    CVF4 = Zero
                    Release (FMT4)
                }

                FNCL ()
            }
        }

        Device (FAN4)
        {
            Name (_HID, EisaId ("PNP0C0B") /* Fan (Thermal Solution) */)  // _HID: Hardware ID
            Name (_UID, 0x04)  // _UID: Unique ID
            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                FN04
            })
        }

        Method (FNCL, 0, NotSerialized)
        {
            Local5 = Acquire (FCMT, 0x03E8)
            If ((Local5 == Zero))
            {
                Local6 = FCRN /* \_TZ_.FCRN */
                Release (FCMT)
            }

            If ((Local6 != Zero))
            {
                Signal (FCET)
                Return (Zero)
            }
            Else
            {
                Local5 = Acquire (FCMT, 0x03E8)
                If ((Local5 == Zero))
                {
                    FCRN = One
                    Release (FCMT)
                }

                Local5 = Zero
                While ((Local5 < 0x04))
                {
                    If ((Wait (FCET, 0x05) != Zero))
                    {
                        Local5 = 0x04
                    }
                    Else
                    {
                        Local5++
                    }
                }

                Local5 = Acquire (FCMT, 0x03E8)
                If ((Local5 == Zero))
                {
                    FCRN = Zero
                    Release (FCMT)
                }
            }

            Local0 = Zero
            Local1 = Zero
            Local2 = Zero
            Local3 = Zero
            Local4 = Zero
            Local5 = Acquire (FMT0, 0x03E8)
            If ((Local5 == Zero))
            {
                Local0 = CVF0 /* \_TZ_.CVF0 */
                Release (FMT0)
            }

            Local5 = Acquire (FMT1, 0x03E8)
            If ((Local5 == Zero))
            {
                Local1 = CVF1 /* \_TZ_.CVF1 */
                Release (FMT1)
            }

            Local5 = Acquire (FMT2, 0x03E8)
            If ((Local5 == Zero))
            {
                Local2 = CVF2 /* \_TZ_.CVF2 */
                Release (FMT2)
            }

            Local5 = Acquire (FMT3, 0x03E8)
            If ((Local5 == Zero))
            {
                Local3 = CVF3 /* \_TZ_.CVF3 */
                Release (FMT3)
            }

            Local5 = Acquire (FMT4, 0x03E8)
            If ((Local5 == Zero))
            {
                Local4 = CVF4 /* \_TZ_.CVF4 */
                Release (FMT4)
            }

            \VFN0 = Local0
            \VFN1 = Local1
            \VFN2 = Local2
            \VFN3 = Local3
            \VFN4 = Local4
            If ((\_SB.PCI0.LPCB.H_EC.ECAV && ETMD))
            {
                Local5 = Acquire (\_SB.PCI0.LPCB.H_EC.ECMT, 0x03E8)
                If ((Local5 == Zero))
                {
                    If (((Local0 != Zero) && (Local1 != Zero)))
                    {
                        \_SB.PCI0.LPCB.H_EC.ECWT (AC0F, RefOf (\_SB.PCI0.LPCB.H_EC.PENV))
                    }
                    ElseIf (((Local0 == Zero) && (Local1 != Zero)))
                    {
                        \_SB.PCI0.LPCB.H_EC.ECWT (AC1F, RefOf (\_SB.PCI0.LPCB.H_EC.PENV))
                    }
                    Else
                    {
                        \_SB.PCI0.LPCB.H_EC.ECWT (Zero, RefOf (\_SB.PCI0.LPCB.H_EC.PENV))
                    }

                    \_SB.PCI0.LPCB.H_EC.ECMD (0x1A)
                    Release (\_SB.PCI0.LPCB.H_EC.ECMT)
                }
            }
        }

        ThermalZone (TZ00)
        {
            Name (PTMP, 0x0BB8)
            Method (_SCP, 1, Serialized)  // _SCP: Set Cooling Policy
            {
                \CTYP = Arg0
            }

            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                If (CondRefOf (\_PR.ACRT))
                {
                    If ((\_PR.ACRT != Zero))
                    {
                        Return ((0x0AAC + (\_PR.ACRT * 0x0A)))
                    }
                }

                Return ((0x0AAC + (\CRTT * 0x0A)))
            }

            Method (_AC0, 0, Serialized)  // _ACx: Active Cooling, x=0-9
            {
                If (CondRefOf (\_PR.AAC0))
                {
                    If ((\_PR.AAC0 != Zero))
                    {
                        Return ((0x0AAC + (\_PR.AAC0 * 0x0A)))
                    }
                }

                Return ((0x0AAC + (\ACTT * 0x0A)))
            }

            Method (_AC1, 0, Serialized)  // _ACx: Active Cooling, x=0-9
            {
                Return ((0x0AAC + (\ACT1 * 0x0A)))
            }

            Method (_AC2, 0, Serialized)  // _ACx: Active Cooling, x=0-9
            {
                Return (((0x0AAC + (\ACT1 * 0x0A)) - 0x32))
            }

            Method (_AC3, 0, Serialized)  // _ACx: Active Cooling, x=0-9
            {
                Return (((0x0AAC + (\ACT1 * 0x0A)) - 0x64))
            }

            Method (_AC4, 0, Serialized)  // _ACx: Active Cooling, x=0-9
            {
                Return (((0x0AAC + (\ACT1 * 0x0A)) - 0x96))
            }

            Name (_AL0, Package (0x01)  // _ALx: Active List, x=0-9
            {
                FAN0
            })
            Name (_AL1, Package (0x01)  // _ALx: Active List, x=0-9
            {
                FAN1
            })
            Name (_AL2, Package (0x01)  // _ALx: Active List, x=0-9
            {
                FAN2
            })
            Name (_AL3, Package (0x01)  // _ALx: Active List, x=0-9
            {
                FAN3
            })
            Name (_AL4, Package (0x01)  // _ALx: Active List, x=0-9
            {
                FAN4
            })
            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                If (!ETMD)
                {
                    Return (0x0BB8)
                }

                If (CondRefOf (\_PR.DTSE))
                {
                    If ((\_PR.DTSE == 0x03))
                    {
                        Return ((0x0B10 + (\CRTT * 0x0A)))
                    }
                }

                If (CondRefOf (\_PR.DTSE))
                {
                    If ((\_PR.DTSE == One))
                    {
                        If ((\_PR.PKGA == One))
                        {
                            Local0 = \_PR.PDTS /* External reference */
                            Return ((0x0AAC + (Local0 * 0x0A)))
                        }

                        Local0 = \_PR.DTS1 /* External reference */
                        If ((\_PR.DTS2 > Local0))
                        {
                            Local0 = \_PR.DTS2 /* External reference */
                        }

                        If ((\_PR.DTS3 > Local0))
                        {
                            Local0 = \_PR.DTS3 /* External reference */
                        }

                        If ((\_PR.DTS4 > Local0))
                        {
                            Local0 = \_PR.DTS4 /* External reference */
                        }

                        Return ((0x0AAC + (Local0 * 0x0A)))
                    }
                }

                If (\_SB.PCI0.LPCB.H_EC.ECAV)
                {
                    Local0 = \_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PLMX))
                    Local0 = (0x0AAC + (Local0 * 0x0A))
                    PTMP = Local0
                    Return (Local0)
                }

                Return (0x0BC2)
            }
        }

        ThermalZone (TZ01)
        {
            Name (PTMP, 0x0BB8)
            Method (_SCP, 1, Serialized)  // _SCP: Set Cooling Policy
            {
                \CTYP = Arg0
            }

            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                If (CondRefOf (\_PR.ACRT))
                {
                    If ((\_PR.ACRT != Zero))
                    {
                        Return ((0x0AAC + (\_PR.ACRT * 0x0A)))
                    }
                }

                Return ((0x0AAC + (\CRTT * 0x0A)))
            }

            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                If (!ETMD)
                {
                    Return (0x0BCC)
                }

                If (CondRefOf (\_PR.DTSE))
                {
                    If ((\_PR.DTSE == 0x03))
                    {
                        Return ((0x0B10 + (\CRTT * 0x0A)))
                    }
                }

                If (CondRefOf (\_PR.DTSE))
                {
                    If ((\_PR.DTSE == One))
                    {
                        If ((\_PR.PKGA == One))
                        {
                            Local0 = \_PR.PDTS /* External reference */
                            Return ((0x0AAC + (Local0 * 0x0A)))
                        }

                        Local0 = \_PR.DTS1 /* External reference */
                        If ((\_PR.DTS2 > Local0))
                        {
                            Local0 = \_PR.DTS2 /* External reference */
                        }

                        If ((\_PR.DTS3 > Local0))
                        {
                            Local0 = \_PR.DTS3 /* External reference */
                        }

                        If ((\_PR.DTS4 > Local0))
                        {
                            Local0 = \_PR.DTS4 /* External reference */
                        }

                        Return ((0x0AAC + (Local0 * 0x0A)))
                    }
                }

                If (\_SB.PCI0.LPCB.H_EC.ECAV)
                {
                    Local0 = \_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PECH))
                    Local0 *= 0x0A
                    Local1 = \_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PECL))
                    Local1 >>= 0x02
                    Local1 = ((Local1 * 0x0A) / 0x40)
                    Local0 += Local1
                    Local0 += 0x0AAC
                    PTMP = Local0
                    Return (Local0)
                }

                Return (0x0BD6)
            }

            Method (XPSL, 0, Serialized)
            {
                If ((\TCNT == 0x08))
                {
                    Return (Package (0x08)
                    {
                        \_PR.CPU0, 
                        \_PR.CPU1, 
                        \_PR.CPU2, 
                        \_PR.CPU3, 
                        \_PR.CPU4, 
                        \_PR.CPU5, 
                        \_PR.CPU6, 
                        \_PR.CPU7
                    })
                }

                If ((\TCNT == 0x04))
                {
                    Return (Package (0x04)
                    {
                        \_PR.CPU0, 
                        \_PR.CPU1, 
                        \_PR.CPU2, 
                        \_PR.CPU3
                    })
                }

                If ((\TCNT == 0x02))
                {
                    Return (Package (0x02)
                    {
                        \_PR.CPU0, 
                        \_PR.CPU1
                    })
                }

                Return (Package (0x01)
                {
                    \_PR.CPU0
                })
            }

            Method (XPSV, 0, Serialized)
            {
                If (CondRefOf (\_PR.APSV))
                {
                    If ((\_PR.APSV != Zero))
                    {
                        Return ((0x0AAC + (\_PR.APSV * 0x0A)))
                    }
                }

                Return ((0x0AAC + (\PSVT * 0x0A)))
            }

            Method (XTC1, 0, Serialized)
            {
                Return (\TC1V) /* External reference */
            }

            Method (XTC2, 0, Serialized)
            {
                Return (\TC2V) /* External reference */
            }

            Method (XTSP, 0, Serialized)
            {
                Return (\TSPV) /* External reference */
            }
        }
    }
}

