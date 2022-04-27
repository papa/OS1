.global _ZN3CCB13contextSwitchEPNS_7ContextES1_
.type _ZN3CCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3CCB13contextSwitchEPNS_7ContextES1_:
    #a0 - old Context
    #a1 - new Context
    sd sp, 0 * 8(a0)
    sd ra, 1 * 8(a0)

    ld sp, 0 * 8(a1)
    ld ra, 1 * 8(a1)

    ret
