package com.google.android.gms.internal.ads;

public abstract class zzept {
    public static zzept zzn(Class cls) {
        if (System.getProperty("java.vm.name").equalsIgnoreCase("Dalvik")) {
            return new zzepq(cls.getSimpleName());
        }
        return new zzeps(cls.getSimpleName());
    }

    public abstract void zzio(String str);
}
