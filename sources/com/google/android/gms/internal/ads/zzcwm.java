package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbsu;

public final class zzcwm<AdT, AdapterT, ListenerT extends zzbsu> implements zzeqb<zzcwi<AdT, AdapterT, ListenerT>> {
    private final zzeqo<zzcro<AdapterT, ListenerT>> zzfqp;
    private final zzeqo<zzdzv> zzfux;
    private final zzeqo<zzdrj> zzfvi;
    private final zzeqo<zzcrr<AdT, AdapterT, ListenerT>> zzgwn;

    private zzcwm(zzeqo<zzdrj> zzeqo, zzeqo<zzdzv> zzeqo2, zzeqo<zzcro<AdapterT, ListenerT>> zzeqo3, zzeqo<zzcrr<AdT, AdapterT, ListenerT>> zzeqo4) {
        this.zzfvi = zzeqo;
        this.zzfux = zzeqo2;
        this.zzfqp = zzeqo3;
        this.zzgwn = zzeqo4;
    }

    public static <AdT, AdapterT, ListenerT extends zzbsu> zzcwm<AdT, AdapterT, ListenerT> zzg(zzeqo<zzdrj> zzeqo, zzeqo<zzdzv> zzeqo2, zzeqo<zzcro<AdapterT, ListenerT>> zzeqo3, zzeqo<zzcrr<AdT, AdapterT, ListenerT>> zzeqo4) {
        return new zzcwm<>(zzeqo, zzeqo2, zzeqo3, zzeqo4);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcwi(this.zzfvi.get(), this.zzfux.get(), this.zzfqp.get(), this.zzgwn.get());
    }
}
