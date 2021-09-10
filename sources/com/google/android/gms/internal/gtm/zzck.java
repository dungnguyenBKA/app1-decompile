package com.google.android.gms.internal.gtm;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.analytics.CampaignTrackingReceiver;
import com.google.android.gms.analytics.c;
import com.google.android.gms.analytics.i;
import com.google.android.gms.analytics.q;
import com.google.android.gms.common.internal.n;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* access modifiers changed from: package-private */
public final class zzck extends zzbs {
    private boolean zza;
    private final zzce zzb;
    private final zzfe zzc;
    private final zzfc zzd;
    private final zzcc zze;
    private long zzf = Long.MIN_VALUE;
    private final zzcw zzg;
    private final zzcw zzh;
    private final zzfo zzi;
    private long zzj;
    private boolean zzk;

    protected zzck(zzbv zzbv, zzbw zzbw) {
        super(zzbv);
        Objects.requireNonNull(zzbw, "null reference");
        this.zzd = new zzfc(zzbv);
        this.zzb = new zzce(zzbv);
        this.zzc = new zzfe(zzbv);
        this.zze = new zzcc(zzbv);
        this.zzi = new zzfo(zzC());
        this.zzg = new zzcg(this, zzbv);
        this.zzh = new zzch(this, zzbv);
    }

    private final void zzag() {
        zzcy zzy = zzy();
        if (zzy.zze()) {
            zzy.zza();
        }
    }

    private final void zzah() {
        if (this.zzg.zzh()) {
            zzO("All hits dispatched or no network/service. Going to power save mode");
        }
        this.zzg.zzf();
    }

    private final void zzai() {
        long j;
        zzcy zzy = zzy();
        if (zzy.zzc() && !zzy.zze()) {
            q.h();
            zzW();
            try {
                j = this.zzb.zzc();
            } catch (SQLiteException e) {
                zzK("Failed to get min/max hit times from local store", e);
                j = 0;
            }
            if (j != 0) {
                long abs = Math.abs(zzC().a() - j);
                zzw();
                if (abs <= zzeu.zzn.zzb().longValue()) {
                    zzw();
                    zzP("Dispatch alarm scheduled (ms)", Long.valueOf(zzct.zzd()));
                    zzy.zzb();
                }
            }
        }
    }

    private final void zzaj(zzbx zzbx, zzaw zzaw) {
        Objects.requireNonNull(zzbx, "null reference");
        Objects.requireNonNull(zzaw, "null reference");
        c cVar = new c(zzt());
        cVar.c(zzbx.zzc());
        cVar.d(zzbx.zzf());
        i a = cVar.a();
        zzbe zzbe = (zzbe) a.b(zzbe.class);
        zzbe.zzk("data");
        zzbe.zzl(true);
        a.g(zzaw);
        zzaz zzaz = (zzaz) a.b(zzaz.class);
        zzav zzav = (zzav) a.b(zzav.class);
        for (Map.Entry<String, String> entry : zzbx.zzd().entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            if ("an".equals(key)) {
                zzav.zzk(value);
            } else if ("av".equals(key)) {
                zzav.zzl(value);
            } else if ("aid".equals(key)) {
                zzav.zzi(value);
            } else if ("aiid".equals(key)) {
                zzav.zzj(value);
            } else if ("uid".equals(key)) {
                zzbe.zzm(value);
            } else {
                zzaz.zze(key, value);
            }
        }
        zzH("Sending installation campaign to", zzbx.zzc(), zzaw);
        a.j(zzA().zza());
        a.k();
    }

    private final boolean zzak(String str) {
        return yv.a(zzo()).a(str) == 0;
    }

    static /* bridge */ /* synthetic */ void zzc(zzck zzck) {
        try {
            zzck.zzb.zza();
            zzck.zzae();
        } catch (SQLiteException e) {
            zzck.zzS("Failed to delete stale hits", e);
        }
        zzcw zzcw = zzck.zzh;
        zzck.zzw();
        zzcw.zzg(86400000);
    }

    public final void zzZ(long j) {
        q.h();
        zzW();
        if (j < 0) {
            j = 0;
        }
        this.zzf = j;
        zzae();
    }

    public final long zza() {
        long j = this.zzf;
        if (j != Long.MIN_VALUE) {
            return j;
        }
        zzw();
        long longValue = zzeu.zzi.zzb().longValue();
        zzft zzB = zzB();
        zzB.zzW();
        if (!zzB.zzc) {
            return longValue;
        }
        zzft zzB2 = zzB();
        zzB2.zzW();
        return ((long) zzB2.zzd) * 1000;
    }

    /* access modifiers changed from: package-private */
    public final void zzaa() {
        zzW();
        n.k(!this.zza, "Analytics backend already started");
        this.zza = true;
        zzq().i(new zzci(this));
    }

    /* access modifiers changed from: protected */
    public final void zzab() {
        zzW();
        zzw();
        q.h();
        Context zza2 = zzt().zza();
        if (!zzfi.zza(zza2)) {
            zzR("AnalyticsReceiver is not registered or is disabled. Register the receiver for reliable dispatching on non-Google Play devices. See http://goo.gl/8Rd3yj for instructions.");
        } else if (!zzfn.zzh(zza2)) {
            zzJ("AnalyticsService is not registered or is disabled. Analytics service at risk of not starting. See http://goo.gl/8Rd3yj for instructions.");
        }
        if (!CampaignTrackingReceiver.zzb(zza2)) {
            zzR("CampaignTrackingReceiver is not registered, not exported or is disabled. Installation campaign tracking is not possible. See http://goo.gl/8Rd3yj for instructions.");
        }
        zzA().zza();
        if (!zzak("android.permission.ACCESS_NETWORK_STATE")) {
            zzJ("Missing required android.permission.ACCESS_NETWORK_STATE. Google Analytics disabled. See http://goo.gl/8Rd3yj for instructions");
            zzad();
        }
        if (!zzak("android.permission.INTERNET")) {
            zzJ("Missing required android.permission.INTERNET. Google Analytics disabled. See http://goo.gl/8Rd3yj for instructions");
            zzad();
        }
        if (zzfn.zzh(zzo())) {
            zzO("AnalyticsService registered in the app manifest and enabled");
        } else {
            zzw();
            zzR("AnalyticsService not registered in the app manifest. Hits might not be delivered reliably. See http://goo.gl/8Rd3yj for instructions.");
        }
        if (!this.zzk) {
            zzw();
            if (!this.zzb.zzac()) {
                zzi();
            }
        }
        zzae();
    }

    public final void zzac() {
        q.h();
        zzW();
        zzF("Sync dispatching local hits");
        long j = this.zzj;
        zzw();
        zzi();
        try {
            zzaf();
            zzA().zzi();
            zzae();
            if (this.zzj != j) {
                this.zzd.zzb();
            }
        } catch (Exception e) {
            zzK("Sync local dispatch failed", e);
            zzae();
        }
    }

    public final void zzad() {
        zzW();
        q.h();
        this.zzk = true;
        this.zze.zzc();
        zzae();
    }

    public final void zzae() {
        long j;
        q.h();
        zzW();
        if (!this.zzk) {
            zzw();
            if (zza() > 0) {
                if (this.zzb.zzac()) {
                    this.zzd.zzc();
                    zzah();
                    zzag();
                    return;
                }
                if (!zzeu.zzJ.zzb().booleanValue()) {
                    this.zzd.zza();
                    if (!this.zzd.zzd()) {
                        zzah();
                        zzag();
                        zzai();
                        return;
                    }
                }
                zzai();
                long zza2 = zza();
                long zzb2 = zzA().zzb();
                if (zzb2 != 0) {
                    j = zza2 - Math.abs(zzC().a() - zzb2);
                    if (j <= 0) {
                        zzw();
                        j = Math.min(zzct.zze(), zza2);
                    }
                } else {
                    zzw();
                    j = Math.min(zzct.zze(), zza2);
                }
                zzP("Dispatch scheduled (ms)", Long.valueOf(j));
                if (this.zzg.zzh()) {
                    this.zzg.zze(Math.max(1L, j + this.zzg.zzb()));
                    return;
                }
                this.zzg.zzg(j);
                return;
            }
        }
        this.zzd.zzc();
        zzah();
        zzag();
    }

    /* access modifiers changed from: protected */
    public final boolean zzaf() {
        boolean z;
        q.h();
        zzW();
        zzO("Dispatching a batch of local hits");
        if (!this.zze.zzg()) {
            zzw();
            z = true;
        } else {
            z = false;
        }
        boolean zze2 = true ^ this.zzc.zze();
        if (!z || !zze2) {
            zzw();
            int zzh2 = zzct.zzh();
            zzw();
            long max = (long) Math.max(zzh2, zzct.zzg());
            ArrayList arrayList = new ArrayList();
            long j = 0;
            while (true) {
                try {
                    this.zzb.zzm();
                    arrayList.clear();
                    try {
                        List<zzex> zzj2 = this.zzb.zzj(max);
                        if (zzj2.isEmpty()) {
                            zzO("Store is empty, nothing to dispatch");
                            zzah();
                            zzag();
                            try {
                                this.zzb.zzab();
                                this.zzb.zzaa();
                                return false;
                            } catch (SQLiteException e) {
                                zzK("Failed to commit local dispatch transaction", e);
                                zzah();
                                zzag();
                                return false;
                            }
                        } else {
                            zzP("Hits loaded from store. count", Integer.valueOf(zzj2.size()));
                            for (zzex zzex : zzj2) {
                                if (zzex.zzb() == j) {
                                    zzL("Database contains successfully uploaded hit", Long.valueOf(j), Integer.valueOf(zzj2.size()));
                                    zzah();
                                    zzag();
                                    try {
                                        return false;
                                    } catch (SQLiteException e2) {
                                        zzK("Failed to commit local dispatch transaction", e2);
                                        zzah();
                                        zzag();
                                        return false;
                                    }
                                }
                            }
                            if (this.zze.zzg()) {
                                zzw();
                                zzO("Service connected, sending hits to the service");
                                while (!zzj2.isEmpty()) {
                                    zzex zzex2 = zzj2.get(0);
                                    if (!this.zze.zzh(zzex2)) {
                                        break;
                                    }
                                    j = Math.max(j, zzex2.zzb());
                                    zzj2.remove(zzex2);
                                    zzG("Hit sent do device AnalyticsService for delivery", zzex2);
                                    try {
                                        this.zzb.zzn(zzex2.zzb());
                                        arrayList.add(Long.valueOf(zzex2.zzb()));
                                    } catch (SQLiteException e3) {
                                        zzK("Failed to remove hit that was send for delivery", e3);
                                        zzah();
                                        zzag();
                                        try {
                                            this.zzb.zzab();
                                            this.zzb.zzaa();
                                            return false;
                                        } catch (SQLiteException e4) {
                                            zzK("Failed to commit local dispatch transaction", e4);
                                            zzah();
                                            zzag();
                                            return false;
                                        }
                                    }
                                }
                            }
                            if (this.zzc.zze()) {
                                List<Long> zzc2 = this.zzc.zzc(zzj2);
                                for (Long l : zzc2) {
                                    j = Math.max(j, l.longValue());
                                }
                                try {
                                    this.zzb.zzZ(zzc2);
                                    arrayList.addAll(zzc2);
                                } catch (SQLiteException e5) {
                                    zzK("Failed to remove successfully uploaded hits", e5);
                                    zzah();
                                    zzag();
                                    try {
                                        this.zzb.zzab();
                                        this.zzb.zzaa();
                                        return false;
                                    } catch (SQLiteException e6) {
                                        zzK("Failed to commit local dispatch transaction", e6);
                                        zzah();
                                        zzag();
                                        return false;
                                    }
                                }
                            }
                            if (arrayList.isEmpty()) {
                                try {
                                    this.zzb.zzab();
                                    this.zzb.zzaa();
                                    return false;
                                } catch (SQLiteException e7) {
                                    zzK("Failed to commit local dispatch transaction", e7);
                                    zzah();
                                    zzag();
                                    return false;
                                }
                            } else {
                                try {
                                    this.zzb.zzab();
                                    this.zzb.zzaa();
                                } catch (SQLiteException e8) {
                                    zzK("Failed to commit local dispatch transaction", e8);
                                    zzah();
                                    zzag();
                                    return false;
                                }
                            }
                        }
                    } catch (SQLiteException e9) {
                        zzS("Failed to read hits from persisted store", e9);
                        zzah();
                        zzag();
                        try {
                            this.zzb.zzab();
                            this.zzb.zzaa();
                            return false;
                        } catch (SQLiteException e10) {
                            zzK("Failed to commit local dispatch transaction", e10);
                            zzah();
                            zzag();
                            return false;
                        }
                    }
                } finally {
                    try {
                        this.zzb.zzab();
                        this.zzb.zzaa();
                    } catch (SQLiteException e11) {
                        zzK("Failed to commit local dispatch transaction", e11);
                        zzah();
                        zzag();
                        return false;
                    }
                }
            }
        } else {
            zzO("No network or service available. Will retry later");
            return false;
        }
    }

    public final long zzb(zzbx zzbx, boolean z) {
        Objects.requireNonNull(zzbx, "null reference");
        zzW();
        q.h();
        try {
            this.zzb.zzm();
            zzce zzce = this.zzb;
            String zzb2 = zzbx.zzb();
            n.e(zzb2);
            zzce.zzW();
            q.h();
            int delete = zzce.zzf().delete("properties", "app_uid=? AND cid<>?", new String[]{"0", zzb2});
            if (delete > 0) {
                zzce.zzP("Deleted property records", Integer.valueOf(delete));
            }
            long zze2 = this.zzb.zze(0, zzbx.zzb(), zzbx.zzc());
            zzbx.zze(1 + zze2);
            zzce zzce2 = this.zzb;
            zzce2.zzW();
            q.h();
            SQLiteDatabase zzf2 = zzce2.zzf();
            Map<String, String> zzd2 = zzbx.zzd();
            Objects.requireNonNull(zzd2, "null reference");
            Uri.Builder builder = new Uri.Builder();
            for (Map.Entry<String, String> entry : zzd2.entrySet()) {
                builder.appendQueryParameter(entry.getKey(), entry.getValue());
            }
            String encodedQuery = builder.build().getEncodedQuery();
            if (encodedQuery == null) {
                encodedQuery = "";
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_uid", (Long) 0L);
            contentValues.put("cid", zzbx.zzb());
            contentValues.put("tid", zzbx.zzc());
            contentValues.put("adid", Integer.valueOf(zzbx.zzf() ? 1 : 0));
            contentValues.put("hits_count", Long.valueOf(zzbx.zza()));
            contentValues.put("params", encodedQuery);
            try {
                if (zzf2.insertWithOnConflict("properties", null, contentValues, 5) == -1) {
                    zzce2.zzJ("Failed to insert/update a property (got -1)");
                }
            } catch (SQLiteException e) {
                zzce2.zzK("Error storing a property", e);
            }
            this.zzb.zzab();
            try {
                this.zzb.zzaa();
            } catch (SQLiteException e2) {
                zzK("Failed to end transaction", e2);
            }
            return zze2;
        } catch (SQLiteException e3) {
            zzK("Failed to update Analytics property", e3);
            try {
                this.zzb.zzaa();
            } catch (SQLiteException e4) {
                zzK("Failed to end transaction", e4);
            }
            return -1;
        } catch (Throwable th) {
            try {
                this.zzb.zzaa();
            } catch (SQLiteException e5) {
                zzK("Failed to end transaction", e5);
            }
            throw th;
        }
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.gtm.zzbs
    public final void zzd() {
        this.zzb.zzX();
        this.zzc.zzX();
        this.zze.zzX();
    }

    public final void zzf(zzcz zzcz) {
        zzg(zzcz, this.zzj);
    }

    public final void zzg(zzcz zzcz, long j) {
        q.h();
        zzW();
        long zzb2 = zzA().zzb();
        zzG("Dispatching local hits. Elapsed time since last dispatch (ms)", Long.valueOf(zzb2 != 0 ? Math.abs(zzC().a() - zzb2) : -1));
        zzw();
        zzi();
        try {
            zzaf();
            zzA().zzi();
            zzae();
            if (zzcz != null) {
                zzcz.zza(null);
            }
            if (this.zzj != j) {
                this.zzd.zzb();
            }
        } catch (Exception e) {
            zzK("Local dispatch failed", e);
            zzA().zzi();
            zzae();
            if (zzcz != null) {
                zzcz.zza(e);
            }
        }
    }

    public final void zzh() {
        q.h();
        zzW();
        zzw();
        zzO("Delete all hits from local store");
        try {
            zzce zzce = this.zzb;
            q.h();
            zzce.zzW();
            zzce.zzf().delete("hits2", null, null);
            zzce zzce2 = this.zzb;
            q.h();
            zzce2.zzW();
            zzce2.zzf().delete("properties", null, null);
            zzae();
        } catch (SQLiteException e) {
            zzS("Failed to delete hits from store", e);
        }
        zzi();
        if (this.zze.zze()) {
            zzO("Device service unavailable. Can't clear hits stored on the device service.");
        }
    }

    /* access modifiers changed from: protected */
    public final void zzi() {
        if (!this.zzk) {
            zzw();
            if (zzct.zzl() && !this.zze.zzg()) {
                zzw();
                if (this.zzi.zzc(zzeu.zzO.zzb().longValue())) {
                    this.zzi.zzb();
                    zzO("Connecting to service");
                    if (this.zze.zzf()) {
                        zzO("Connected to service");
                        this.zzi.zza();
                        zzm();
                    }
                }
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:51:0x0172, code lost:
        if (r2 != null) goto L_0x0174;
     */
    /* JADX WARNING: Removed duplicated region for block: B:58:0x018d  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void zzj(com.google.android.gms.internal.gtm.zzex r22) {
        /*
        // Method dump skipped, instructions count: 521
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.gtm.zzck.zzj(com.google.android.gms.internal.gtm.zzex):void");
    }

    /* access modifiers changed from: protected */
    public final void zzk(zzbx zzbx) {
        q.h();
        zzG("Sending first hit to property", zzbx.zzc());
        zzfo zzf2 = zzA().zzf();
        zzw();
        if (!zzf2.zzc(zzct.zzc())) {
            String zzg2 = zzA().zzg();
            if (!TextUtils.isEmpty(zzg2)) {
                zzaw zzb2 = zzfs.zzb(zzz(), zzg2);
                zzG("Found relevant installation campaign", zzb2);
                zzaj(zzbx, zzb2);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final void zzl() {
        q.h();
        this.zzj = zzC().a();
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Removed duplicated region for block: B:14:0x004d A[LOOP:1: B:14:0x004d->B:22:?, LOOP_START] */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x0080 A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void zzm() {
        /*
        // Method dump skipped, instructions count: 145
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.gtm.zzck.zzm():void");
    }

    public final void zzn(String str) {
        n.e(str);
        q.h();
        zzE();
        zzaw zzb2 = zzfs.zzb(zzz(), str);
        if (zzb2 == null) {
            zzS("Parsing failed. Ignoring invalid campaign data", str);
            return;
        }
        String zzg2 = zzA().zzg();
        if (str.equals(zzg2)) {
            zzR("Ignoring duplicate install campaign");
        } else if (!TextUtils.isEmpty(zzg2)) {
            zzL("Ignoring multiple install campaigns. original, new", zzg2, str);
        } else {
            zzA().zzh(str);
            zzfo zzf2 = zzA().zzf();
            zzw();
            if (zzf2.zzc(zzct.zzc())) {
                zzS("Campaign received too late, ignoring", zzb2);
                return;
            }
            zzG("Received installation campaign", zzb2);
            zzce zzce = this.zzb;
            zzce.zzW();
            q.h();
            SQLiteDatabase zzf3 = zzce.zzf();
            Cursor cursor = null;
            try {
                zzce.zzw();
                int intValue = zzeu.zzh.zzb().intValue();
                Cursor query = zzf3.query("properties", new String[]{"cid", "tid", "adid", "hits_count", "params"}, "app_uid=?", new String[]{"0"}, null, null, null, String.valueOf(intValue));
                ArrayList arrayList = new ArrayList();
                if (query.moveToFirst()) {
                    do {
                        String string = query.getString(0);
                        String string2 = query.getString(1);
                        boolean z = query.getInt(2) != 0;
                        long j = (long) query.getInt(3);
                        Map<String, String> zzl = zzce.zzl(query.getString(4));
                        if (!TextUtils.isEmpty(string)) {
                            if (!TextUtils.isEmpty(string2)) {
                                arrayList.add(new zzbx(0, string, string2, z, j, zzl));
                            }
                        }
                        zzce.zzT("Read property with empty client id or tracker id", string, string2);
                    } while (query.moveToNext());
                }
                if (arrayList.size() >= intValue) {
                    zzce.zzR("Sending hits to too many properties. Campaign report might be incorrect");
                }
                query.close();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    zzaj((zzbx) it.next(), zzb2);
                }
            } catch (SQLiteException e) {
                zzce.zzK("Error loading hits from the database", e);
                throw e;
            } catch (Throwable th) {
                if (0 != 0) {
                    cursor.close();
                }
                throw th;
            }
        }
    }
}
