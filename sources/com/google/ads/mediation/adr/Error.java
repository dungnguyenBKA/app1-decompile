package com.google.ads.mediation.adr;

import com.google.android.gms.ads.AdError;

public class Error {
    public static AdError getExceptionError(String str) {
        return new AdError(101, "LoadAd Exception", str);
    }
}
