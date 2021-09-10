package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.content.pm.Signature;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.text.TextUtils;
import androidx.core.app.b;
import com.facebook.ads.AdError;
import com.google.ads.ADRequestList;
import com.google.android.gms.common.d;
import com.google.android.gms.common.g;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.internal.measurement.zzkw;
import com.google.android.gms.internal.measurement.zzmg;
import com.google.android.gms.internal.measurement.zzs;
import com.vungle.warren.model.AdvertisementDBAdapter;
import java.io.ByteArrayInputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Random;
import java.util.Set;
import java.util.TreeSet;
import java.util.concurrent.atomic.AtomicLong;
import javax.security.auth.x500.X500Principal;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

public final class h9 extends e5 {
    private static final String[] g = {"firebase_", "google_", "ga_"};
    private static final String[] h = {"_err"};
    private SecureRandom c;
    private final AtomicLong d = new AtomicLong(0);
    private int e;
    private Integer f = null;

    h9(j4 j4Var) {
        super(j4Var);
    }

    static MessageDigest A() {
        for (int i = 0; i < 2; i++) {
            try {
                MessageDigest instance = MessageDigest.getInstance("MD5");
                if (instance != null) {
                    return instance;
                }
            } catch (NoSuchAlgorithmException unused) {
            }
        }
        return null;
    }

    static long B(byte[] bArr) {
        Objects.requireNonNull(bArr, "null reference");
        int length = bArr.length;
        int i = 0;
        n.j(length > 0);
        int i2 = length - 1;
        long j = 0;
        while (i2 >= 0 && i2 >= bArr.length - 8) {
            j += (((long) bArr[i2]) & 255) << i;
            i += 8;
            i2--;
        }
        return j;
    }

    static boolean C(Context context) {
        Objects.requireNonNull(context, "null reference");
        if (Build.VERSION.SDK_INT >= 24) {
            return a0(context, "com.google.android.gms.measurement.AppMeasurementJobService");
        }
        return a0(context, "com.google.android.gms.measurement.AppMeasurementService");
    }

    static boolean E(String str) {
        return !TextUtils.isEmpty(str) && str.startsWith("_");
    }

    static boolean F(String str, String str2) {
        if (str == null && str2 == null) {
            return true;
        }
        if (str == null) {
            return false;
        }
        return str.equals(str2);
    }

    public static boolean L(String str) {
        return !h[0].equals(str);
    }

    public static ArrayList<Bundle> W(List<zzaa> list) {
        if (list == null) {
            return new ArrayList<>(0);
        }
        ArrayList<Bundle> arrayList = new ArrayList<>(list.size());
        for (zzaa zzaa : list) {
            Bundle bundle = new Bundle();
            bundle.putString(AdvertisementDBAdapter.AdvertisementColumns.COLUMN_APP_ID, zzaa.b);
            bundle.putString("origin", zzaa.c);
            bundle.putLong("creation_timestamp", zzaa.e);
            bundle.putString("name", zzaa.d.c);
            b.T0(bundle, zzaa.d.o());
            bundle.putBoolean("active", zzaa.f);
            String str = zzaa.g;
            if (str != null) {
                bundle.putString("trigger_event_name", str);
            }
            zzas zzas = zzaa.h;
            if (zzas != null) {
                bundle.putString("timed_out_event_name", zzas.b);
                zzaq zzaq = zzaa.h.c;
                if (zzaq != null) {
                    bundle.putBundle("timed_out_event_params", zzaq.m0());
                }
            }
            bundle.putLong("trigger_timeout", zzaa.i);
            zzas zzas2 = zzaa.j;
            if (zzas2 != null) {
                bundle.putString("triggered_event_name", zzas2.b);
                zzaq zzaq2 = zzaa.j.c;
                if (zzaq2 != null) {
                    bundle.putBundle("triggered_event_params", zzaq2.m0());
                }
            }
            bundle.putLong("triggered_timestamp", zzaa.d.d);
            bundle.putLong("time_to_live", zzaa.k);
            zzas zzas3 = zzaa.l;
            if (zzas3 != null) {
                bundle.putString("expired_event_name", zzas3.b);
                zzaq zzaq3 = zzaa.l.c;
                if (zzaq3 != null) {
                    bundle.putBundle("expired_event_params", zzaq3.m0());
                }
            }
            arrayList.add(bundle);
        }
        return arrayList;
    }

    static final boolean X(Bundle bundle, int i) {
        if (bundle.getLong("_err") != 0) {
            return false;
        }
        bundle.putLong("_err", (long) i);
        return true;
    }

    private final Object Y(int i, Object obj, boolean z, boolean z2) {
        if (obj == null) {
            return null;
        }
        if ((obj instanceof Long) || (obj instanceof Double)) {
            return obj;
        }
        if (obj instanceof Integer) {
            return Long.valueOf((long) ((Integer) obj).intValue());
        }
        if (obj instanceof Byte) {
            return Long.valueOf((long) ((Byte) obj).byteValue());
        }
        if (obj instanceof Short) {
            return Long.valueOf((long) ((Short) obj).shortValue());
        }
        if (obj instanceof Boolean) {
            return Long.valueOf(true != ((Boolean) obj).booleanValue() ? 0 : 1);
        } else if (obj instanceof Float) {
            return Double.valueOf(((Float) obj).doubleValue());
        } else {
            if ((obj instanceof String) || (obj instanceof Character) || (obj instanceof CharSequence)) {
                return p(String.valueOf(obj), i, z);
            }
            if (!z2 || (!(obj instanceof Bundle[]) && !(obj instanceof Parcelable[]))) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            Parcelable[] parcelableArr = (Parcelable[]) obj;
            for (Parcelable parcelable : parcelableArr) {
                if (parcelable instanceof Bundle) {
                    Bundle H = H((Bundle) parcelable);
                    if (!H.isEmpty()) {
                        arrayList.add(H);
                    }
                }
            }
            return arrayList.toArray(new Bundle[arrayList.size()]);
        }
    }

    private final int Z(String str) {
        if ("_ldl".equals(str)) {
            this.a.x();
            return 2048;
        } else if ("_id".equals(str)) {
            this.a.x();
            return 256;
        } else if (!this.a.x().u(null, v2.g0) || !"_lgclid".equals(str)) {
            this.a.x();
            return 36;
        } else {
            this.a.x();
            return 100;
        }
    }

    private static boolean a0(Context context, String str) {
        ServiceInfo serviceInfo;
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null || (serviceInfo = packageManager.getServiceInfo(new ComponentName(context, str), 0)) == null || !serviceInfo.enabled) {
                return false;
            }
            return true;
        } catch (PackageManager.NameNotFoundException unused) {
        }
    }

    private static boolean b0(String str, String[] strArr) {
        for (String str2 : strArr) {
            if (F(str, str2)) {
                return true;
            }
        }
        return false;
    }

    static boolean e0(String str) {
        n.e(str);
        if (str.charAt(0) != '_' || str.equals("_ep")) {
            return true;
        }
        return false;
    }

    /* access modifiers changed from: package-private */
    public final boolean D(String str) {
        g();
        if (yv.a(this.a.b()).a(str) == 0) {
            return true;
        }
        this.a.c().u().b("Permission not granted", str);
        return false;
    }

    /* access modifiers changed from: package-private */
    public final boolean G(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String A = this.a.x().A();
        this.a.zzas();
        return A.equals(str);
    }

    /* access modifiers changed from: package-private */
    public final Bundle H(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        if (bundle != null) {
            for (String str : bundle.keySet()) {
                Object r = r(str, bundle.get(str));
                if (r == null) {
                    this.a.c().s().b("Param value can't be null", this.a.F().p(str));
                } else {
                    y(bundle2, str, r);
                }
            }
        }
        return bundle2;
    }

    /* access modifiers changed from: package-private */
    public final zzas I(String str, String str2, Bundle bundle, String str3, long j, boolean z, boolean z2) {
        Bundle bundle2;
        if (TextUtils.isEmpty(str2)) {
            return null;
        }
        if (k0(str2) == 0) {
            if (bundle != null) {
                bundle2 = new Bundle(bundle);
            } else {
                bundle2 = new Bundle();
            }
            bundle2.putString("_o", str3);
            Bundle s = s(str, str2, bundle2, Collections.singletonList("_o"), false);
            if (z) {
                s = H(s);
            }
            return new zzas(str2, new zzaq(s), str3, j);
        }
        this.a.c().n().b("Invalid conditional property event name", this.a.F().q(str2));
        throw new IllegalArgumentException();
    }

    /* access modifiers changed from: package-private */
    public final boolean J(Context context, String str) {
        Signature[] signatureArr;
        X500Principal x500Principal = new X500Principal("CN=Android Debug,O=Android,C=US");
        try {
            PackageInfo e2 = yv.a(context).e(str, 64);
            if (e2 == null || (signatureArr = e2.signatures) == null || signatureArr.length <= 0) {
                return true;
            }
            return ((X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(signatureArr[0].toByteArray()))).getSubjectX500Principal().equals(x500Principal);
        } catch (CertificateException e3) {
            this.a.c().n().b("Error obtaining certificate", e3);
            return true;
        } catch (PackageManager.NameNotFoundException e4) {
            this.a.c().n().b("Package name not found", e4);
            return true;
        }
    }

    /* access modifiers changed from: package-private */
    public final byte[] K(Parcelable parcelable) {
        if (parcelable == null) {
            return null;
        }
        Parcel obtain = Parcel.obtain();
        try {
            parcelable.writeToParcel(obtain, 0);
            return obtain.marshall();
        } finally {
            obtain.recycle();
        }
    }

    @EnsuresNonNull({"this.apkVersion"})
    public final int M() {
        if (this.f == null) {
            d c2 = d.c();
            Context b = this.a.b();
            Objects.requireNonNull(c2);
            this.f = Integer.valueOf(g.getApkVersion(b) / AdError.NETWORK_ERROR_CODE);
        }
        return this.f.intValue();
    }

    public final long N(long j, long j2) {
        return ((j2 * 60000) + j) / 86400000;
    }

    /* access modifiers changed from: package-private */
    public final void O(Bundle bundle, long j) {
        long j2 = bundle.getLong("_et");
        if (j2 != 0) {
            this.a.c().q().b("Params already contained engagement", Long.valueOf(j2));
        }
        bundle.putLong("_et", j + j2);
    }

    public final void P(zzs zzs, String str) {
        Bundle bundle = new Bundle();
        bundle.putString(ADRequestList.ORDER_R, str);
        try {
            zzs.zzb(bundle);
        } catch (RemoteException e2) {
            this.a.c().q().b("Error returning string value to wrapper", e2);
        }
    }

    public final void Q(zzs zzs, long j) {
        Bundle bundle = new Bundle();
        bundle.putLong(ADRequestList.ORDER_R, j);
        try {
            zzs.zzb(bundle);
        } catch (RemoteException e2) {
            this.a.c().q().b("Error returning long value to wrapper", e2);
        }
    }

    public final void R(zzs zzs, int i) {
        Bundle bundle = new Bundle();
        bundle.putInt(ADRequestList.ORDER_R, i);
        try {
            zzs.zzb(bundle);
        } catch (RemoteException e2) {
            this.a.c().q().b("Error returning int value to wrapper", e2);
        }
    }

    public final void S(zzs zzs, byte[] bArr) {
        Bundle bundle = new Bundle();
        bundle.putByteArray(ADRequestList.ORDER_R, bArr);
        try {
            zzs.zzb(bundle);
        } catch (RemoteException e2) {
            this.a.c().q().b("Error returning byte array to wrapper", e2);
        }
    }

    public final void T(zzs zzs, boolean z) {
        Bundle bundle = new Bundle();
        bundle.putBoolean(ADRequestList.ORDER_R, z);
        try {
            zzs.zzb(bundle);
        } catch (RemoteException e2) {
            this.a.c().q().b("Error returning boolean value to wrapper", e2);
        }
    }

    public final void U(zzs zzs, Bundle bundle) {
        try {
            zzs.zzb(bundle);
        } catch (RemoteException e2) {
            this.a.c().q().b("Error returning bundle value to wrapper", e2);
        }
    }

    public final void V(zzs zzs, ArrayList<Bundle> arrayList) {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList(ADRequestList.ORDER_R, arrayList);
        try {
            zzs.zzb(bundle);
        } catch (RemoteException e2) {
            this.a.c().q().b("Error returning bundle list to wrapper", e2);
        }
    }

    public final long c0() {
        long andIncrement;
        long j;
        if (this.d.get() == 0) {
            synchronized (this.d) {
                long nextLong = new Random(System.nanoTime() ^ this.a.a().a()).nextLong();
                int i = this.e + 1;
                this.e = i;
                j = nextLong + ((long) i);
            }
            return j;
        }
        synchronized (this.d) {
            this.d.compareAndSet(-1, 1);
            andIncrement = this.d.getAndIncrement();
        }
        return andIncrement;
    }

    /* access modifiers changed from: package-private */
    @EnsuresNonNull({"this.secureRandom"})
    public final SecureRandom d0() {
        g();
        if (this.c == null) {
            this.c = new SecureRandom();
        }
        return this.c;
    }

    /* access modifiers changed from: package-private */
    public final Bundle f0(Uri uri) {
        String str;
        String str2;
        String str3;
        String str4;
        if (uri != null) {
            try {
                if (uri.isHierarchical()) {
                    str4 = uri.getQueryParameter("utm_campaign");
                    str3 = uri.getQueryParameter("utm_source");
                    str2 = uri.getQueryParameter("utm_medium");
                    str = uri.getQueryParameter("gclid");
                } else {
                    str4 = null;
                    str3 = null;
                    str2 = null;
                    str = null;
                }
                if (TextUtils.isEmpty(str4) && TextUtils.isEmpty(str3) && TextUtils.isEmpty(str2) && TextUtils.isEmpty(str)) {
                    return null;
                }
                Bundle bundle = new Bundle();
                if (!TextUtils.isEmpty(str4)) {
                    bundle.putString("campaign", str4);
                }
                if (!TextUtils.isEmpty(str3)) {
                    bundle.putString("source", str3);
                }
                if (!TextUtils.isEmpty(str2)) {
                    bundle.putString("medium", str2);
                }
                if (!TextUtils.isEmpty(str)) {
                    bundle.putString("gclid", str);
                }
                String queryParameter = uri.getQueryParameter("utm_term");
                if (!TextUtils.isEmpty(queryParameter)) {
                    bundle.putString("term", queryParameter);
                }
                String queryParameter2 = uri.getQueryParameter("utm_content");
                if (!TextUtils.isEmpty(queryParameter2)) {
                    bundle.putString("content", queryParameter2);
                }
                String queryParameter3 = uri.getQueryParameter("aclid");
                if (!TextUtils.isEmpty(queryParameter3)) {
                    bundle.putString("aclid", queryParameter3);
                }
                String queryParameter4 = uri.getQueryParameter("cp1");
                if (!TextUtils.isEmpty(queryParameter4)) {
                    bundle.putString("cp1", queryParameter4);
                }
                String queryParameter5 = uri.getQueryParameter("anid");
                if (!TextUtils.isEmpty(queryParameter5)) {
                    bundle.putString("anid", queryParameter5);
                }
                return bundle;
            } catch (UnsupportedOperationException e2) {
                this.a.c().q().b("Install referrer url isn't a hierarchical URI", e2);
            }
        }
        return null;
    }

    /* access modifiers changed from: package-private */
    public final boolean g0(String str, String str2) {
        if (str2 == null) {
            this.a.c().p().b("Name is required and can't be null. Type", str);
            return false;
        } else if (str2.length() == 0) {
            this.a.c().p().b("Name is required and can't be empty. Type", str);
            return false;
        } else {
            int codePointAt = str2.codePointAt(0);
            if (!Character.isLetter(codePointAt)) {
                this.a.c().p().c("Name must start with a letter. Type, name", str, str2);
                return false;
            }
            int length = str2.length();
            int charCount = Character.charCount(codePointAt);
            while (charCount < length) {
                int codePointAt2 = str2.codePointAt(charCount);
                if (codePointAt2 == 95 || Character.isLetterOrDigit(codePointAt2)) {
                    charCount += Character.charCount(codePointAt2);
                } else {
                    this.a.c().p().c("Name must consist of letters, digits or _ (underscores). Type, name", str, str2);
                    return false;
                }
            }
            return true;
        }
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.measurement.internal.e5
    public final boolean h() {
        return true;
    }

    /* access modifiers changed from: package-private */
    public final boolean h0(String str, String str2) {
        if (str2 == null) {
            this.a.c().p().b("Name is required and can't be null. Type", str);
            return false;
        } else if (str2.length() == 0) {
            this.a.c().p().b("Name is required and can't be empty. Type", str);
            return false;
        } else {
            int codePointAt = str2.codePointAt(0);
            if (!Character.isLetter(codePointAt)) {
                if (codePointAt == 95) {
                    codePointAt = 95;
                } else {
                    this.a.c().p().c("Name must start with a letter or _ (underscore). Type, name", str, str2);
                    return false;
                }
            }
            int length = str2.length();
            int charCount = Character.charCount(codePointAt);
            while (charCount < length) {
                int codePointAt2 = str2.codePointAt(charCount);
                if (codePointAt2 == 95 || Character.isLetterOrDigit(codePointAt2)) {
                    charCount += Character.charCount(codePointAt2);
                } else {
                    this.a.c().p().c("Name must consist of letters, digits or _ (underscores). Type, name", str, str2);
                    return false;
                }
            }
            return true;
        }
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.measurement.internal.e5
    public final void i() {
        g();
        SecureRandom secureRandom = new SecureRandom();
        long nextLong = secureRandom.nextLong();
        if (nextLong == 0) {
            nextLong = secureRandom.nextLong();
            if (nextLong == 0) {
                this.a.c().q().a("Utils falling back to Random for random id");
            }
        }
        this.d.set(nextLong);
    }

    /* access modifiers changed from: package-private */
    public final boolean i0(String str, String[] strArr, String[] strArr2, String str2) {
        if (str2 == null) {
            this.a.c().p().b("Name is required and can't be null. Type", str);
            return false;
        }
        String[] strArr3 = g;
        for (int i = 0; i < 3; i++) {
            if (str2.startsWith(strArr3[i])) {
                this.a.c().p().c("Name starts with reserved prefix. Type, name", str, str2);
                return false;
            }
        }
        if (strArr == null || !b0(str2, strArr)) {
            return true;
        }
        if (strArr2 != null && b0(str2, strArr2)) {
            return true;
        }
        this.a.c().p().c("Name is reserved. Type, name", str, str2);
        return false;
    }

    /* access modifiers changed from: package-private */
    public final boolean j0(String str, int i, String str2) {
        if (str2 == null) {
            this.a.c().p().b("Name is required and can't be null. Type", str);
            return false;
        } else if (str2.codePointCount(0, str2.length()) <= i) {
            return true;
        } else {
            this.a.c().p().d("Name is too long. Type, maximum supported length, name", str, Integer.valueOf(i), str2);
            return false;
        }
    }

    /* access modifiers changed from: package-private */
    public final int k0(String str) {
        if (!h0("event", str)) {
            return 2;
        }
        if (!i0("event", g5.a, g5.b, str)) {
            return 13;
        }
        this.a.x();
        if (!j0("event", 40, str)) {
            return 2;
        }
        return 0;
    }

    /* access modifiers changed from: package-private */
    public final int l0(String str) {
        if (!h0("user property", str)) {
            return 6;
        }
        if (!i0("user property", i5.a, null, str)) {
            return 15;
        }
        this.a.x();
        if (!j0("user property", 24, str)) {
            return 6;
        }
        return 0;
    }

    /* access modifiers changed from: package-private */
    public final int m0(String str) {
        if (!g0("event param", str)) {
            return 3;
        }
        if (!i0("event param", null, null, str)) {
            return 14;
        }
        this.a.x();
        if (!j0("event param", 40, str)) {
            return 3;
        }
        return 0;
    }

    /* access modifiers changed from: package-private */
    public final boolean n(String str, String str2, String str3) {
        if (!TextUtils.isEmpty(str)) {
            Objects.requireNonNull(str, "null reference");
            if (str.matches("^(1:\\d+:android:[a-f0-9]+|ca-app-pub-.*)$")) {
                return true;
            }
            if (this.a.I()) {
                this.a.c().p().b("Invalid google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI. provided id", i3.w(str));
            }
            return false;
        }
        zzmg.zzb();
        if (this.a.x().u(null, v2.i0) && !TextUtils.isEmpty(str3)) {
            return true;
        }
        if (!TextUtils.isEmpty(str2)) {
            Objects.requireNonNull(str2, "null reference");
            if (str2.matches("^(1:\\d+:android:[a-f0-9]+|ca-app-pub-.*)$")) {
                return true;
            }
            this.a.c().p().b("Invalid admob_app_id. Analytics disabled.", i3.w(str2));
            return false;
        }
        if (this.a.I()) {
            this.a.c().p().a("Missing google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI");
        }
        return false;
    }

    /* access modifiers changed from: package-private */
    public final int n0(String str) {
        if (!h0("event param", str)) {
            return 3;
        }
        if (!i0("event param", null, null, str)) {
            return 14;
        }
        this.a.x();
        if (!j0("event param", 40, str)) {
            return 3;
        }
        return 0;
    }

    /* access modifiers changed from: package-private */
    public final boolean o(String str, String str2, String str3, String str4) {
        boolean isEmpty = TextUtils.isEmpty(str);
        boolean isEmpty2 = TextUtils.isEmpty(str2);
        if (!isEmpty && !isEmpty2) {
            Objects.requireNonNull(str, "null reference");
            return !str.equals(str2);
        } else if (isEmpty && isEmpty2) {
            return (TextUtils.isEmpty(str3) || TextUtils.isEmpty(str4)) ? !TextUtils.isEmpty(str4) : !str3.equals(str4);
        } else {
            if (isEmpty) {
                return TextUtils.isEmpty(str3) || !str3.equals(str4);
            }
            if (TextUtils.isEmpty(str4)) {
                return false;
            }
            return TextUtils.isEmpty(str3) || !str3.equals(str4);
        }
    }

    /* access modifiers changed from: package-private */
    public final boolean o0(Object obj) {
        return (obj instanceof Parcelable[]) || (obj instanceof ArrayList) || (obj instanceof Bundle);
    }

    public final String p(String str, int i, boolean z) {
        if (str == null) {
            return null;
        }
        if (str.codePointCount(0, str.length()) <= i) {
            return str;
        }
        if (z) {
            return String.valueOf(str.substring(0, str.offsetByCodePoints(0, i))).concat("...");
        }
        return null;
    }

    /* access modifiers changed from: package-private */
    public final boolean p0(String str, String str2, int i, Object obj) {
        if (obj != null && !(obj instanceof Long) && !(obj instanceof Float) && !(obj instanceof Integer) && !(obj instanceof Byte) && !(obj instanceof Short) && !(obj instanceof Boolean) && !(obj instanceof Double)) {
            if (!(obj instanceof String) && !(obj instanceof Character) && !(obj instanceof CharSequence)) {
                return false;
            }
            String valueOf = String.valueOf(obj);
            if (valueOf.codePointCount(0, valueOf.length()) > i) {
                this.a.c().s().d("Value is too long; discarded. Value kind, name, value length", str, str2, Integer.valueOf(valueOf.length()));
                return false;
            }
        }
        return true;
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x00de A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x00df  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final int q(java.lang.String r15, java.lang.String r16, java.lang.String r17, java.lang.Object r18, android.os.Bundle r19, java.util.List<java.lang.String> r20, boolean r21, boolean r22) {
        /*
        // Method dump skipped, instructions count: 372
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.h9.q(java.lang.String, java.lang.String, java.lang.String, java.lang.Object, android.os.Bundle, java.util.List, boolean, boolean):int");
    }

    /* access modifiers changed from: package-private */
    public final void q0(String str, String str2, String str3, Bundle bundle, List<String> list, boolean z) {
        int i;
        String str4;
        int i2;
        if (bundle != null) {
            this.a.x();
            Iterator it = new TreeSet(bundle.keySet()).iterator();
            int i3 = 0;
            while (it.hasNext()) {
                String str5 = (String) it.next();
                if (list == null || !list.contains(str5)) {
                    i = z ? m0(str5) : 0;
                    if (i == 0) {
                        i = n0(str5);
                    }
                } else {
                    i = 0;
                }
                if (i != 0) {
                    v(bundle, i, str5, i == 3 ? str5 : null);
                    bundle.remove(str5);
                } else {
                    if (o0(bundle.get(str5))) {
                        this.a.c().s().d("Nested Bundle parameters are not allowed; discarded. event name, param name, child param name", str2, str3, str5);
                        i2 = 22;
                        str4 = str5;
                    } else {
                        str4 = str5;
                        i2 = q(str, str2, str5, bundle.get(str5), bundle, list, z, false);
                    }
                    if (i2 != 0 && !"_ev".equals(str4)) {
                        v(bundle, i2, str4, bundle.get(str4));
                        bundle.remove(str4);
                    } else if (e0(str4) && !b0(str4, h5.d) && (i3 = i3 + 1) > 0) {
                        this.a.c().p().c("Item cannot contain custom parameters", this.a.F().o(str2), this.a.F().r(bundle));
                        X(bundle, 23);
                        bundle.remove(str4);
                    }
                }
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final Object r(String str, Object obj) {
        int i = 256;
        if ("_ev".equals(str)) {
            this.a.x();
            return Y(256, obj, true, true);
        }
        if (E(str)) {
            this.a.x();
        } else {
            this.a.x();
            i = 100;
        }
        return Y(i, obj, false, true);
    }

    /* access modifiers changed from: package-private */
    public final Bundle s(String str, String str2, Bundle bundle, List<String> list, boolean z) {
        Set<String> set;
        int i;
        List<String> list2 = list;
        boolean b0 = b0(str2, g5.d);
        Bundle bundle2 = new Bundle(bundle);
        int k = this.a.x().k();
        if (this.a.x().u(str, v2.Y)) {
            set = new TreeSet<>(bundle.keySet());
        } else {
            set = bundle.keySet();
        }
        int i2 = 0;
        for (String str3 : set) {
            if (list2 == null || !list2.contains(str3)) {
                i = z ? m0(str3) : 0;
                if (i == 0) {
                    i = n0(str3);
                }
            } else {
                i = 0;
            }
            if (i != 0) {
                v(bundle2, i, str3, i == 3 ? str3 : null);
                bundle2.remove(str3);
            } else {
                int q = q(str, str2, str3, bundle.get(str3), bundle2, list, z, b0);
                if (q == 17) {
                    v(bundle2, 17, str3, Boolean.FALSE);
                } else if (q != 0 && !"_ev".equals(str3)) {
                    v(bundle2, q, q == 21 ? str2 : str3, bundle.get(str3));
                    bundle2.remove(str3);
                }
                if (e0(str3)) {
                    int i3 = i2 + 1;
                    if (i3 > k) {
                        StringBuilder sb = new StringBuilder(48);
                        sb.append("Event can't contain more than ");
                        sb.append(k);
                        sb.append(" params");
                        this.a.c().p().c(sb.toString(), this.a.F().o(str2), this.a.F().r(bundle));
                        X(bundle2, 5);
                        bundle2.remove(str3);
                    }
                    list2 = list;
                    i2 = i3;
                }
            }
            list2 = list;
        }
        return bundle2;
    }

    /* access modifiers changed from: package-private */
    public final void t(j3 j3Var, int i) {
        Iterator it = new TreeSet(j3Var.d.keySet()).iterator();
        int i2 = 0;
        while (it.hasNext()) {
            String str = (String) it.next();
            if (e0(str) && (i2 = i2 + 1) > i) {
                StringBuilder sb = new StringBuilder(48);
                sb.append("Event can't contain more than ");
                sb.append(i);
                sb.append(" params");
                this.a.c().p().c(sb.toString(), this.a.F().o(j3Var.a), this.a.F().r(j3Var.d));
                X(j3Var.d, 5);
                j3Var.d.remove(str);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final void u(Bundle bundle, Bundle bundle2) {
        if (bundle2 != null) {
            for (String str : bundle2.keySet()) {
                if (!bundle.containsKey(str)) {
                    this.a.E().y(bundle, str, bundle2.get(str));
                }
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final void v(Bundle bundle, int i, String str, Object obj) {
        if (X(bundle, i)) {
            this.a.x();
            bundle.putString("_ev", p(str, 40, true));
            if (obj == null) {
                return;
            }
            if ((obj instanceof String) || (obj instanceof CharSequence)) {
                bundle.putLong("_el", (long) String.valueOf(obj).length());
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final int w(String str, Object obj) {
        boolean z;
        if ("_ldl".equals(str)) {
            z = p0("user property referrer", str, Z(str), obj);
        } else {
            z = p0("user property", str, Z(str), obj);
        }
        return z ? 0 : 7;
    }

    /* access modifiers changed from: package-private */
    public final Object x(String str, Object obj) {
        if ("_ldl".equals(str)) {
            return Y(Z(str), obj, true, false);
        }
        return Y(Z(str), obj, false, false);
    }

    /* access modifiers changed from: package-private */
    public final void y(Bundle bundle, String str, Object obj) {
        if (bundle != null) {
            if (obj instanceof Long) {
                bundle.putLong(str, ((Long) obj).longValue());
            } else if (obj instanceof String) {
                bundle.putString(str, String.valueOf(obj));
            } else if (obj instanceof Double) {
                bundle.putDouble(str, ((Double) obj).doubleValue());
            } else if (obj instanceof Bundle[]) {
                bundle.putParcelableArray(str, (Bundle[]) obj);
            } else if (str != null) {
                this.a.c().s().c("Not putting event parameter. Invalid value type. name, type", this.a.F().p(str), obj != null ? obj.getClass().getSimpleName() : null);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final void z(g9 g9Var, String str, int i, String str2, String str3, int i2) {
        Bundle bundle = new Bundle();
        X(bundle, i);
        if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
            bundle.putString(str2, str3);
        }
        if (i == 6 || i == 7 || i == 2) {
            bundle.putLong("_el", (long) i2);
        }
        zzkw.zzb();
        if (this.a.x().u(null, v2.A0)) {
            g9Var.zza(str, bundle);
            return;
        }
        this.a.zzas();
        this.a.D().Q("auto", "_err", bundle);
    }
}
