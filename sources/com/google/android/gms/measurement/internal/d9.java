package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.internal.measurement.zzbw;
import com.google.android.gms.internal.measurement.zzby;
import com.google.android.gms.internal.measurement.zzcd;
import com.google.android.gms.internal.measurement.zzcf;
import com.google.android.gms.internal.measurement.zzck;
import com.google.android.gms.internal.measurement.zzcx;
import com.google.android.gms.internal.measurement.zzcz;
import com.google.android.gms.internal.measurement.zzda;
import com.google.android.gms.internal.measurement.zzdb;
import com.google.android.gms.internal.measurement.zzde;
import com.google.android.gms.internal.measurement.zzdf;
import com.google.android.gms.internal.measurement.zzdh;
import com.google.android.gms.internal.measurement.zzdi;
import com.google.android.gms.internal.measurement.zzdj;
import com.google.android.gms.internal.measurement.zzdq;
import com.google.android.gms.internal.measurement.zzds;
import com.google.android.gms.internal.measurement.zzdt;
import com.google.android.gms.internal.measurement.zzdu;
import com.google.android.gms.internal.measurement.zzhe;
import com.google.android.gms.internal.measurement.zziw;
import com.vungle.warren.model.AdvertisementDBAdapter;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.List;
import java.util.Objects;
import java.util.zip.GZIPOutputStream;

public final class d9 extends s8 {
    d9(b9 b9Var) {
        super(b9Var);
    }

    static boolean A(String str) {
        return str != null && str.matches("([+-])?([0-9]+\\.?[0-9]*|[0-9]*\\.?[0-9]+)") && str.length() <= 310;
    }

    static boolean B(List<Long> list, int i) {
        if (i >= list.size() * 64) {
            return false;
        }
        return ((1 << (i % 64)) & list.get(i / 64).longValue()) != 0;
    }

    static List<Long> C(BitSet bitSet) {
        int length = (bitSet.length() + 63) / 64;
        ArrayList arrayList = new ArrayList(length);
        for (int i = 0; i < length; i++) {
            long j = 0;
            for (int i2 = 0; i2 < 64; i2++) {
                int i3 = (i * 64) + i2;
                if (i3 >= bitSet.length()) {
                    break;
                }
                if (bitSet.get(i3)) {
                    j |= 1 << i2;
                }
            }
            arrayList.add(Long.valueOf(j));
        }
        return arrayList;
    }

    static <Builder extends zziw> Builder H(Builder builder, byte[] bArr) {
        zzhe zzb = zzhe.zzb();
        return zzb != null ? (Builder) builder.zzav(bArr, zzb) : (Builder) builder.zzaw(bArr);
    }

    static int I(zzdi zzdi, String str) {
        for (int i = 0; i < zzdi.zzk(); i++) {
            if (str.equals(zzdi.zzl(i).zzc())) {
                return i;
            }
        }
        return -1;
    }

    static List<zzdf> J(Bundle[] bundleArr) {
        ArrayList arrayList = new ArrayList();
        for (Bundle bundle : bundleArr) {
            if (bundle != null) {
                zzde zzn = zzdf.zzn();
                for (String str : bundle.keySet()) {
                    zzde zzn2 = zzdf.zzn();
                    zzn2.zza(str);
                    Object obj = bundle.get(str);
                    if (obj instanceof Long) {
                        zzn2.zzd(((Long) obj).longValue());
                    } else if (obj instanceof String) {
                        zzn2.zzb((String) obj);
                    } else if (obj instanceof Double) {
                        zzn2.zzf(((Double) obj).doubleValue());
                    }
                    zzn.zzi(zzn2);
                }
                if (zzn.zzh() > 0) {
                    arrayList.add((zzdf) zzn.zzaA());
                }
            }
        }
        return arrayList;
    }

    static final void K(zzda zzda, String str, Object obj) {
        List<zzdf> zza = zzda.zza();
        int i = 0;
        while (true) {
            if (i >= zza.size()) {
                i = -1;
                break;
            } else if (str.equals(zza.get(i).zzb())) {
                break;
            } else {
                i++;
            }
        }
        zzde zzn = zzdf.zzn();
        zzn.zza(str);
        if (obj instanceof Long) {
            zzn.zzd(((Long) obj).longValue());
        } else if (obj instanceof String) {
            zzn.zzb((String) obj);
        } else if (obj instanceof Double) {
            zzn.zzf(((Double) obj).doubleValue());
        } else if (obj instanceof Bundle[]) {
            zzn.zzj(J((Bundle[]) obj));
        }
        if (i >= 0) {
            zzda.zze(i, zzn);
        } else {
            zzda.zzg(zzn);
        }
    }

    static final boolean L(zzas zzas, zzp zzp) {
        Objects.requireNonNull(zzas, "null reference");
        return !TextUtils.isEmpty(zzp.c) || !TextUtils.isEmpty(zzp.r);
    }

    static final zzdf M(zzdb zzdb, String str) {
        for (zzdf zzdf : zzdb.zza()) {
            if (zzdf.zzb().equals(str)) {
                return zzdf;
            }
        }
        return null;
    }

    static final Object l(zzdb zzdb, String str) {
        zzdf M = M(zzdb, str);
        if (M == null) {
            return null;
        }
        if (M.zzc()) {
            return M.zzd();
        }
        if (M.zze()) {
            return Long.valueOf(M.zzf());
        }
        if (M.zzi()) {
            return Double.valueOf(M.zzj());
        }
        if (M.zzm() <= 0) {
            return null;
        }
        List<zzdf> zzk = M.zzk();
        ArrayList arrayList = new ArrayList();
        for (zzdf zzdf : zzk) {
            if (zzdf != null) {
                Bundle bundle = new Bundle();
                for (zzdf zzdf2 : zzdf.zzk()) {
                    if (zzdf2.zzc()) {
                        bundle.putString(zzdf2.zzb(), zzdf2.zzd());
                    } else if (zzdf2.zze()) {
                        bundle.putLong(zzdf2.zzb(), zzdf2.zzf());
                    } else if (zzdf2.zzi()) {
                        bundle.putDouble(zzdf2.zzb(), zzdf2.zzj());
                    }
                }
                if (!bundle.isEmpty()) {
                    arrayList.add(bundle);
                }
            }
        }
        return (Bundle[]) arrayList.toArray(new Bundle[arrayList.size()]);
    }

    private final void m(StringBuilder sb, int i, List<zzdf> list) {
        if (list != null) {
            int i2 = i + 1;
            for (zzdf zzdf : list) {
                if (zzdf != null) {
                    o(sb, i2);
                    sb.append("param {\n");
                    Double d = null;
                    r(sb, i2, "name", zzdf.zza() ? this.a.F().p(zzdf.zzb()) : null);
                    r(sb, i2, "string_value", zzdf.zzc() ? zzdf.zzd() : null);
                    r(sb, i2, "int_value", zzdf.zze() ? Long.valueOf(zzdf.zzf()) : null);
                    if (zzdf.zzi()) {
                        d = Double.valueOf(zzdf.zzj());
                    }
                    r(sb, i2, "double_value", d);
                    if (zzdf.zzm() > 0) {
                        m(sb, i2, zzdf.zzk());
                    }
                    o(sb, i2);
                    sb.append("}\n");
                }
            }
        }
    }

    private final void n(StringBuilder sb, int i, zzby zzby) {
        if (zzby != null) {
            o(sb, i);
            sb.append("filter {\n");
            if (zzby.zze()) {
                r(sb, i, "complement", Boolean.valueOf(zzby.zzf()));
            }
            if (zzby.zzg()) {
                r(sb, i, "param_name", this.a.F().p(zzby.zzh()));
            }
            if (zzby.zza()) {
                int i2 = i + 1;
                zzck zzb = zzby.zzb();
                if (zzb != null) {
                    o(sb, i2);
                    sb.append("string_filter {\n");
                    if (zzb.zza()) {
                        r(sb, i2, "match_type", zzb.zzb().name());
                    }
                    if (zzb.zzc()) {
                        r(sb, i2, "expression", zzb.zzd());
                    }
                    if (zzb.zze()) {
                        r(sb, i2, "case_sensitive", Boolean.valueOf(zzb.zzf()));
                    }
                    if (zzb.zzh() > 0) {
                        o(sb, i2 + 1);
                        sb.append("expression_list {\n");
                        for (String str : zzb.zzg()) {
                            o(sb, i2 + 2);
                            sb.append(str);
                            sb.append("\n");
                        }
                        sb.append("}\n");
                    }
                    o(sb, i2);
                    sb.append("}\n");
                }
            }
            if (zzby.zzc()) {
                s(sb, i + 1, "number_filter", zzby.zzd());
            }
            o(sb, i);
            sb.append("}\n");
        }
    }

    private static final void o(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            sb.append("  ");
        }
    }

    private static final String p(boolean z, boolean z2, boolean z3) {
        StringBuilder sb = new StringBuilder();
        if (z) {
            sb.append("Dynamic ");
        }
        if (z2) {
            sb.append("Sequence ");
        }
        if (z3) {
            sb.append("Session-Scoped ");
        }
        return sb.toString();
    }

    private static final void q(StringBuilder sb, int i, String str, zzdq zzdq, String str2) {
        if (zzdq != null) {
            o(sb, 3);
            sb.append(str);
            sb.append(" {\n");
            if (zzdq.zzd() != 0) {
                o(sb, 4);
                sb.append("results: ");
                int i2 = 0;
                for (Long l : zzdq.zzc()) {
                    int i3 = i2 + 1;
                    if (i2 != 0) {
                        sb.append(", ");
                    }
                    sb.append(l);
                    i2 = i3;
                }
                sb.append('\n');
            }
            if (zzdq.zzb() != 0) {
                o(sb, 4);
                sb.append("status: ");
                int i4 = 0;
                for (Long l2 : zzdq.zza()) {
                    int i5 = i4 + 1;
                    if (i4 != 0) {
                        sb.append(", ");
                    }
                    sb.append(l2);
                    i4 = i5;
                }
                sb.append('\n');
            }
            if (zzdq.zzf() != 0) {
                o(sb, 4);
                sb.append("dynamic_filter_timestamps: {");
                int i6 = 0;
                for (zzcz zzcz : zzdq.zze()) {
                    int i7 = i6 + 1;
                    if (i6 != 0) {
                        sb.append(", ");
                    }
                    sb.append(zzcz.zza() ? Integer.valueOf(zzcz.zzb()) : null);
                    sb.append(":");
                    sb.append(zzcz.zzc() ? Long.valueOf(zzcz.zzd()) : null);
                    i6 = i7;
                }
                sb.append("}\n");
            }
            if (zzdq.zzi() != 0) {
                o(sb, 4);
                sb.append("sequence_filter_timestamps: {");
                int i8 = 0;
                for (zzds zzds : zzdq.zzh()) {
                    int i9 = i8 + 1;
                    if (i8 != 0) {
                        sb.append(", ");
                    }
                    sb.append(zzds.zza() ? Integer.valueOf(zzds.zzb()) : null);
                    sb.append(": [");
                    int i10 = 0;
                    for (Long l3 : zzds.zzc()) {
                        long longValue = l3.longValue();
                        int i11 = i10 + 1;
                        if (i10 != 0) {
                            sb.append(", ");
                        }
                        sb.append(longValue);
                        i10 = i11;
                    }
                    sb.append("]");
                    i8 = i9;
                }
                sb.append("}\n");
            }
            o(sb, 3);
            sb.append("}\n");
        }
    }

    private static final void r(StringBuilder sb, int i, String str, Object obj) {
        if (obj != null) {
            o(sb, i + 1);
            sb.append(str);
            sb.append(": ");
            sb.append(obj);
            sb.append('\n');
        }
    }

    private static final void s(StringBuilder sb, int i, String str, zzcd zzcd) {
        if (zzcd != null) {
            o(sb, i);
            sb.append(str);
            sb.append(" {\n");
            if (zzcd.zza()) {
                r(sb, i, "comparison_type", zzcd.zzb().name());
            }
            if (zzcd.zzc()) {
                r(sb, i, "match_as_float", Boolean.valueOf(zzcd.zzd()));
            }
            if (zzcd.zze()) {
                r(sb, i, "comparison_value", zzcd.zzf());
            }
            if (zzcd.zzg()) {
                r(sb, i, "min_comparison_value", zzcd.zzh());
            }
            if (zzcd.zzi()) {
                r(sb, i, "max_comparison_value", zzcd.zzj());
            }
            o(sb, i);
            sb.append("}\n");
        }
    }

    /* access modifiers changed from: package-private */
    public final List<Long> D(List<Long> list, List<Integer> list2) {
        ArrayList arrayList = new ArrayList(list);
        for (Integer num : list2) {
            if (num.intValue() < 0) {
                this.a.c().q().b("Ignoring negative bit index to be cleared", num);
            } else {
                int intValue = num.intValue() / 64;
                if (intValue >= arrayList.size()) {
                    this.a.c().q().c("Ignoring bit index greater than bitSet size", num, Integer.valueOf(arrayList.size()));
                } else {
                    arrayList.set(intValue, Long.valueOf(((Long) arrayList.get(intValue)).longValue() & ((1 << (num.intValue() % 64)) ^ -1)));
                }
            }
        }
        int size = arrayList.size();
        int size2 = arrayList.size() - 1;
        while (true) {
            size = size2;
            if (size >= 0 && ((Long) arrayList.get(size)).longValue() == 0) {
                size2 = size - 1;
            }
        }
        return arrayList.subList(0, size);
    }

    /* access modifiers changed from: package-private */
    public final boolean E(long j, long j2) {
        return j == 0 || j2 <= 0 || Math.abs(this.a.a().a() - j) > j2;
    }

    /* access modifiers changed from: package-private */
    public final long F(byte[] bArr) {
        Objects.requireNonNull(bArr, "null reference");
        this.a.E().g();
        MessageDigest A = h9.A();
        if (A != null) {
            return h9.B(A.digest(bArr));
        }
        this.a.c().n().a("Failed to get MD5");
        return 0;
    }

    /* access modifiers changed from: package-private */
    public final byte[] G(byte[] bArr) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            gZIPOutputStream.write(bArr);
            gZIPOutputStream.close();
            byteArrayOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            this.a.c().n().b("Failed to gzip content", e);
            throw e;
        }
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.measurement.internal.s8
    public final boolean k() {
        return false;
    }

    /* access modifiers changed from: package-private */
    public final void t(zzdt zzdt, Object obj) {
        Objects.requireNonNull(obj, "null reference");
        zzdt.zzd();
        zzdt.zzf();
        zzdt.zzh();
        if (obj instanceof String) {
            zzdt.zzc((String) obj);
        } else if (obj instanceof Long) {
            zzdt.zze(((Long) obj).longValue());
        } else if (obj instanceof Double) {
            zzdt.zzg(((Double) obj).doubleValue());
        } else {
            this.a.c().n().b("Ignoring invalid (type) user attribute value", obj);
        }
    }

    /* access modifiers changed from: package-private */
    public final void u(zzde zzde, Object obj) {
        zzde.zzc();
        zzde.zze();
        zzde.zzg();
        zzde.zzk();
        if (obj instanceof String) {
            zzde.zzb((String) obj);
        } else if (obj instanceof Long) {
            zzde.zzd(((Long) obj).longValue());
        } else if (obj instanceof Double) {
            zzde.zzf(((Double) obj).doubleValue());
        } else if (obj instanceof Bundle[]) {
            zzde.zzj(J((Bundle[]) obj));
        } else {
            this.a.c().n().b("Ignoring invalid (type) event param value", obj);
        }
    }

    /* access modifiers changed from: package-private */
    public final zzdb v(n nVar) {
        zzda zzk = zzdb.zzk();
        zzk.zzq(nVar.e);
        for (String str : nVar.f.b.keySet()) {
            zzde zzn = zzdf.zzn();
            zzn.zza(str);
            Object o = nVar.f.o(str);
            Objects.requireNonNull(o, "null reference");
            u(zzn, o);
            zzk.zzg(zzn);
        }
        return (zzdb) zzk.zzaA();
    }

    /* access modifiers changed from: package-private */
    public final String w(zzdh zzdh) {
        if (zzdh == null) {
            return "";
        }
        StringBuilder q = ic.q("\nbatch {\n");
        for (zzdj zzdj : zzdh.zza()) {
            if (zzdj != null) {
                o(q, 1);
                q.append("bundle {\n");
                if (zzdj.zza()) {
                    r(q, 1, "protocol_version", Integer.valueOf(zzdj.zzb()));
                }
                r(q, 1, "platform", zzdj.zzt());
                if (zzdj.zzC()) {
                    r(q, 1, "gmp_version", Long.valueOf(zzdj.zzD()));
                }
                if (zzdj.zzE()) {
                    r(q, 1, "uploading_gmp_version", Long.valueOf(zzdj.zzF()));
                }
                if (zzdj.zzae()) {
                    r(q, 1, "dynamite_version", Long.valueOf(zzdj.zzaf()));
                }
                if (zzdj.zzW()) {
                    r(q, 1, "config_version", Long.valueOf(zzdj.zzX()));
                }
                r(q, 1, "gmp_app_id", zzdj.zzP());
                r(q, 1, "admob_app_id", zzdj.zzad());
                r(q, 1, AdvertisementDBAdapter.AdvertisementColumns.COLUMN_APP_ID, zzdj.zzA());
                r(q, 1, "app_version", zzdj.zzB());
                if (zzdj.zzU()) {
                    r(q, 1, "app_version_major", Integer.valueOf(zzdj.zzV()));
                }
                r(q, 1, "firebase_instance_id", zzdj.zzT());
                if (zzdj.zzK()) {
                    r(q, 1, "dev_cert_hash", Long.valueOf(zzdj.zzL()));
                }
                r(q, 1, "app_store", zzdj.zzz());
                if (zzdj.zzi()) {
                    r(q, 1, "upload_timestamp_millis", Long.valueOf(zzdj.zzj()));
                }
                if (zzdj.zzk()) {
                    r(q, 1, "start_timestamp_millis", Long.valueOf(zzdj.zzm()));
                }
                if (zzdj.zzn()) {
                    r(q, 1, "end_timestamp_millis", Long.valueOf(zzdj.zzo()));
                }
                if (zzdj.zzp()) {
                    r(q, 1, "previous_bundle_start_timestamp_millis", Long.valueOf(zzdj.zzq()));
                }
                if (zzdj.zzr()) {
                    r(q, 1, "previous_bundle_end_timestamp_millis", Long.valueOf(zzdj.zzs()));
                }
                r(q, 1, "app_instance_id", zzdj.zzJ());
                r(q, 1, "resettable_device_id", zzdj.zzG());
                r(q, 1, "ds_id", zzdj.zzaa());
                if (zzdj.zzH()) {
                    r(q, 1, "limited_ad_tracking", Boolean.valueOf(zzdj.zzI()));
                }
                r(q, 1, "os_version", zzdj.zzu());
                r(q, 1, "device_model", zzdj.zzv());
                r(q, 1, "user_default_language", zzdj.zzw());
                if (zzdj.zzx()) {
                    r(q, 1, "time_zone_offset_minutes", Integer.valueOf(zzdj.zzy()));
                }
                if (zzdj.zzM()) {
                    r(q, 1, "bundle_sequential_index", Integer.valueOf(zzdj.zzN()));
                }
                if (zzdj.zzQ()) {
                    r(q, 1, "service_upload", Boolean.valueOf(zzdj.zzR()));
                }
                r(q, 1, "health_monitor", zzdj.zzO());
                if (!this.a.x().u(null, v2.v0) && zzdj.zzY() && zzdj.zzZ() != 0) {
                    r(q, 1, "android_id", Long.valueOf(zzdj.zzZ()));
                }
                if (zzdj.zzab()) {
                    r(q, 1, "retry_counter", Integer.valueOf(zzdj.zzac()));
                }
                if (zzdj.zzah()) {
                    r(q, 1, "consent_signals", zzdj.zzai());
                }
                List<zzdu> zzf = zzdj.zzf();
                if (zzf != null) {
                    for (zzdu zzdu : zzf) {
                        if (zzdu != null) {
                            o(q, 2);
                            q.append("user_property {\n");
                            r(q, 2, "set_timestamp_millis", zzdu.zza() ? Long.valueOf(zzdu.zzb()) : null);
                            r(q, 2, "name", this.a.F().q(zzdu.zzc()));
                            r(q, 2, "string_value", zzdu.zze());
                            r(q, 2, "int_value", zzdu.zzf() ? Long.valueOf(zzdu.zzg()) : null);
                            r(q, 2, "double_value", zzdu.zzh() ? Double.valueOf(zzdu.zzi()) : null);
                            o(q, 2);
                            q.append("}\n");
                        }
                    }
                }
                List<zzcx> zzS = zzdj.zzS();
                String zzA = zzdj.zzA();
                if (zzS != null) {
                    for (zzcx zzcx : zzS) {
                        if (zzcx != null) {
                            o(q, 2);
                            q.append("audience_membership {\n");
                            if (zzcx.zza()) {
                                r(q, 2, "audience_id", Integer.valueOf(zzcx.zzb()));
                            }
                            if (zzcx.zzf()) {
                                r(q, 2, "new_audience", Boolean.valueOf(zzcx.zzg()));
                            }
                            q(q, 2, "current_data", zzcx.zzc(), zzA);
                            if (zzcx.zzd()) {
                                q(q, 2, "previous_data", zzcx.zze(), zzA);
                            }
                            o(q, 2);
                            q.append("}\n");
                        }
                    }
                }
                List<zzdb> zzc = zzdj.zzc();
                if (zzc != null) {
                    for (zzdb zzdb : zzc) {
                        if (zzdb != null) {
                            o(q, 2);
                            q.append("event {\n");
                            r(q, 2, "name", this.a.F().o(zzdb.zzd()));
                            if (zzdb.zze()) {
                                r(q, 2, "timestamp_millis", Long.valueOf(zzdb.zzf()));
                            }
                            if (zzdb.zzg()) {
                                r(q, 2, "previous_timestamp_millis", Long.valueOf(zzdb.zzh()));
                            }
                            if (zzdb.zzi()) {
                                r(q, 2, "count", Integer.valueOf(zzdb.zzj()));
                            }
                            if (zzdb.zzb() != 0) {
                                m(q, 2, zzdb.zza());
                            }
                            o(q, 2);
                            q.append("}\n");
                        }
                    }
                }
                o(q, 1);
                q.append("}\n");
            }
        }
        q.append("}\n");
        return q.toString();
    }

    /* access modifiers changed from: package-private */
    public final String x(zzbw zzbw) {
        if (zzbw == null) {
            return "null";
        }
        StringBuilder q = ic.q("\nevent_filter {\n");
        if (zzbw.zza()) {
            r(q, 0, "filter_id", Integer.valueOf(zzbw.zzb()));
        }
        r(q, 0, "event_name", this.a.F().o(zzbw.zzc()));
        String p = p(zzbw.zzi(), zzbw.zzj(), zzbw.zzm());
        if (!p.isEmpty()) {
            r(q, 0, "filter_type", p);
        }
        if (zzbw.zzg()) {
            s(q, 1, "event_count_filter", zzbw.zzh());
        }
        if (zzbw.zze() > 0) {
            q.append("  filters {\n");
            for (zzby zzby : zzbw.zzd()) {
                n(q, 2, zzby);
            }
        }
        o(q, 1);
        q.append("}\n}\n");
        return q.toString();
    }

    /* access modifiers changed from: package-private */
    public final String y(zzcf zzcf) {
        StringBuilder q = ic.q("\nproperty_filter {\n");
        if (zzcf.zza()) {
            r(q, 0, "filter_id", Integer.valueOf(zzcf.zzb()));
        }
        r(q, 0, "property_name", this.a.F().q(zzcf.zzc()));
        String p = p(zzcf.zze(), zzcf.zzf(), zzcf.zzh());
        if (!p.isEmpty()) {
            r(q, 0, "filter_type", p);
        }
        n(q, 1, zzcf.zzd());
        q.append("}\n");
        return q.toString();
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Code restructure failed: missing block: B:10:?, code lost:
        r4.a.c().n().a("Failed to load parcelable from buffer");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x002e, code lost:
        return null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:13:0x002f, code lost:
        r1.recycle();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0032, code lost:
        throw r5;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:8:0x001a, code lost:
        r5 = move-exception;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:9:0x001c */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final <T extends android.os.Parcelable> T z(byte[] r5, android.os.Parcelable.Creator<T> r6) {
        /*
            r4 = this;
            r0 = 0
            if (r5 != 0) goto L_0x0004
            return r0
        L_0x0004:
            android.os.Parcel r1 = android.os.Parcel.obtain()
            int r2 = r5.length     // Catch:{ a -> 0x001c }
            r3 = 0
            r1.unmarshall(r5, r3, r2)     // Catch:{ a -> 0x001c }
            r1.setDataPosition(r3)     // Catch:{ a -> 0x001c }
            java.lang.Object r5 = r6.createFromParcel(r1)     // Catch:{ a -> 0x001c }
            android.os.Parcelable r5 = (android.os.Parcelable) r5     // Catch:{ a -> 0x001c }
            r1.recycle()
            return r5
        L_0x001a:
            r5 = move-exception
            goto L_0x002f
        L_0x001c:
            com.google.android.gms.measurement.internal.j4 r5 = r4.a     // Catch:{ all -> 0x001a }
            com.google.android.gms.measurement.internal.i3 r5 = r5.c()     // Catch:{ all -> 0x001a }
            com.google.android.gms.measurement.internal.g3 r5 = r5.n()     // Catch:{ all -> 0x001a }
            java.lang.String r6 = "Failed to load parcelable from buffer"
            r5.a(r6)     // Catch:{ all -> 0x001a }
            r1.recycle()
            return r0
        L_0x002f:
            r1.recycle()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.d9.z(byte[], android.os.Parcelable$Creator):android.os.Parcelable");
    }
}
