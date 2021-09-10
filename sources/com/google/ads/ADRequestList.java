package com.google.ads;

import java.util.ArrayList;

public class ADRequestList extends ArrayList<lb0> {
    public static final String ADMOB_B_H = "a-b-h";
    public static final String ADMOB_B_M = "a-b-m";
    public static final String ADMOB_B_R = "a-b-r";
    public static final String ADMOB_I_H = "a-i-h";
    public static final String ADMOB_I_M = "a-i-m";
    public static final String ADMOB_I_R = "a-i-r";
    public static final String ADMOB_N_H = "a-n-h";
    public static final String ADMOB_N_M = "a-n-m";
    public static final String ADMOB_N_R = "a-n-r";
    public static final String ADMOB_V_H = "a-v-h";
    public static final String ADMOB_V_M = "a-v-m";
    public static final String ADMOB_V_R = "a-v-r";
    public static final String ALIBABA = "alibaba";
    public static final String AMAZON = "amazon";
    public static final String FAN_B_H = "f-b-h";
    public static final String FAN_B_R = "f-b-r";
    public static final String FAN_I_H = "f-i-h";
    public static final String FAN_I_R = "f-i-r";
    public static final String FAN_N_H = "f-n-h";
    public static final String FAN_N_R = "f-n-r";
    public static final String FAN_V_H = "f-v-h";
    public static final String FAN_V_R = "f-v-r";
    public static final String HW_BANNER = "hw-b";
    public static final String HW_INTERSTITIAL = "hw-i";
    public static final String HW_NATIVE = "hw-n";
    public static final String HW_VIDEO = "hw-v";
    public static final String MOPUB = "mop";
    public static final String ORDER_H = "h";
    public static final String ORDER_M = "m";
    public static final String ORDER_NULL = "n";
    public static final String ORDER_R = "r";
    public static final String SELF = "s";
    public static final String SMAATO_BANNER = "smt-b";
    public static final String SMAATO_INTERSTITIAL = "smt-i";
    public static final String SMAATO_NATIVE = "smt-n";
    public static final String SMAATO_VIDEO = "smt-v";
    public static final String UNITY = "unity";
    public static final String VK = "vk";
    public static final String VUNGLE = "vg";
    public static final String VUNGLE_BANNER = "vg-b";
    private sb0 listener;

    public ADRequestList() {
    }

    public sb0 getADListener() {
        return this.listener;
    }

    public void setADListener(sb0 sb0) {
        this.listener = sb0;
    }

    public ADRequestList(sb0 sb0) {
        this.listener = sb0;
    }
}
