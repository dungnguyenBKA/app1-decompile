package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public final class zzya extends zzgw implements zzxy {
    zzya(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IClientApi");
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final zzxl zza(zv zvVar, zzvs zzvs, String str, zzane zzane, int i) {
        zzxl zzxl;
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzgx.zza(zzdo, zzvs);
        zzdo.writeString(str);
        zzgx.zza(zzdo, zzane);
        zzdo.writeInt(i);
        Parcel zza = zza(1, zzdo);
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzxl = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            if (queryLocalInterface instanceof zzxl) {
                zzxl = (zzxl) queryLocalInterface;
            } else {
                zzxl = new zzxn(readStrongBinder);
            }
        }
        zza.recycle();
        return zzxl;
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final zzxl zzb(zv zvVar, zzvs zzvs, String str, zzane zzane, int i) {
        zzxl zzxl;
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzgx.zza(zzdo, zzvs);
        zzdo.writeString(str);
        zzgx.zza(zzdo, zzane);
        zzdo.writeInt(i);
        Parcel zza = zza(2, zzdo);
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzxl = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            if (queryLocalInterface instanceof zzxl) {
                zzxl = (zzxl) queryLocalInterface;
            } else {
                zzxl = new zzxn(readStrongBinder);
            }
        }
        zza.recycle();
        return zzxl;
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final zzyg zzc(zv zvVar) {
        zzyg zzyg;
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        Parcel zza = zza(4, zzdo);
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzyg = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
            if (queryLocalInterface instanceof zzyg) {
                zzyg = (zzyg) queryLocalInterface;
            } else {
                zzyg = new zzyi(readStrongBinder);
            }
        }
        zza.recycle();
        return zzyg;
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final zzasd zzd(zv zvVar) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        Parcel zza = zza(7, zzdo);
        zzasd zzak = zzasc.zzak(zza.readStrongBinder());
        zza.recycle();
        return zzak;
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final zzxl zzc(zv zvVar, zzvs zzvs, String str, zzane zzane, int i) {
        zzxl zzxl;
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzgx.zza(zzdo, zzvs);
        zzdo.writeString(str);
        zzgx.zza(zzdo, zzane);
        zzdo.writeInt(i);
        Parcel zza = zza(13, zzdo);
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzxl = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            if (queryLocalInterface instanceof zzxl) {
                zzxl = (zzxl) queryLocalInterface;
            } else {
                zzxl = new zzxn(readStrongBinder);
            }
        }
        zza.recycle();
        return zzxl;
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final zzxi zza(zv zvVar, String str, zzane zzane, int i) {
        zzxi zzxi;
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzdo.writeString(str);
        zzgx.zza(zzdo, zzane);
        zzdo.writeInt(i);
        Parcel zza = zza(3, zzdo);
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzxi = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
            if (queryLocalInterface instanceof zzxi) {
                zzxi = (zzxi) queryLocalInterface;
            } else {
                zzxi = new zzxk(readStrongBinder);
            }
        }
        zza.recycle();
        return zzxi;
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final zzaro zzb(zv zvVar) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        Parcel zza = zza(8, zzdo);
        zzaro zzai = zzarr.zzai(zza.readStrongBinder());
        zza.recycle();
        return zzai;
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final zzavm zzb(zv zvVar, String str, zzane zzane, int i) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzdo.writeString(str);
        zzgx.zza(zzdo, zzane);
        zzdo.writeInt(i);
        Parcel zza = zza(12, zzdo);
        zzavm zzar = zzavp.zzar(zza.readStrongBinder());
        zza.recycle();
        return zzar;
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final zzarf zzc(zv zvVar, zzane zzane, int i) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzgx.zza(zzdo, zzane);
        zzdo.writeInt(i);
        Parcel zza = zza(15, zzdo);
        zzarf zzag = zzare.zzag(zza.readStrongBinder());
        zza.recycle();
        return zzag;
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final zzaev zza(zv zvVar, zv zvVar2) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzgx.zza(zzdo, zvVar2);
        Parcel zza = zza(5, zzdo);
        zzaev zzp = zzaeu.zzp(zza.readStrongBinder());
        zza.recycle();
        return zzp;
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final zzaxy zzb(zv zvVar, zzane zzane, int i) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzgx.zza(zzdo, zzane);
        zzdo.writeInt(i);
        Parcel zza = zza(14, zzdo);
        zzaxy zzas = zzayb.zzas(zza.readStrongBinder());
        zza.recycle();
        return zzas;
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final zzaur zza(zv zvVar, zzane zzane, int i) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzgx.zza(zzdo, zzane);
        zzdo.writeInt(i);
        Parcel zza = zza(6, zzdo);
        zzaur zzan = zzauq.zzan(zza.readStrongBinder());
        zza.recycle();
        return zzan;
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final zzyg zza(zv zvVar, int i) {
        zzyg zzyg;
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzdo.writeInt(i);
        Parcel zza = zza(9, zzdo);
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzyg = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
            if (queryLocalInterface instanceof zzyg) {
                zzyg = (zzyg) queryLocalInterface;
            } else {
                zzyg = new zzyi(readStrongBinder);
            }
        }
        zza.recycle();
        return zzyg;
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final zzxl zza(zv zvVar, zzvs zzvs, String str, int i) {
        zzxl zzxl;
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzgx.zza(zzdo, zzvs);
        zzdo.writeString(str);
        zzdo.writeInt(i);
        Parcel zza = zza(10, zzdo);
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzxl = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            if (queryLocalInterface instanceof zzxl) {
                zzxl = (zzxl) queryLocalInterface;
            } else {
                zzxl = new zzxn(readStrongBinder);
            }
        }
        zza.recycle();
        return zzxl;
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final zzaey zza(zv zvVar, zv zvVar2, zv zvVar3) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzgx.zza(zzdo, zvVar2);
        zzgx.zza(zzdo, zvVar3);
        Parcel zza = zza(11, zzdo);
        zzaey zzq = zzafb.zzq(zza.readStrongBinder());
        zza.recycle();
        return zzq;
    }
}
