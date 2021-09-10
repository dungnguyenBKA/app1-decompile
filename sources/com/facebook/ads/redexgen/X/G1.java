package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import androidx.annotation.VisibleForTesting;
import com.facebook.ads.sync.SyncClientBundleRequestType;
import com.facebook.ads.sync.SyncModifiableBundle;
import com.facebook.ads.sync.SyncModuleImpl;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;
import org.apache.http.HttpStatus;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

public final class G1 implements AbstractC0774Qv {
    public static byte[] A0B;
    public static String[] A0C;
    @VisibleForTesting
    public final Runnable A00;
    public final AnonymousClass8D A01;
    public final AnonymousClass8Q A02;
    public final QK A03;
    public final C0767Qo A04 = new C0767Qo(this);
    public final C0772Qt A05;
    public final AbstractC0773Qu A06;
    public final String A07;
    public final List<AbstractC0778Qz> A08 = new ArrayList();
    public final Map<EnumC0763Qk, AnonymousClass4Y> A09 = new HashMap();
    public final Map<EnumC0763Qk, G7> A0A = new HashMap();

    static {
        A06();
        A05();
    }

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0B, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 17);
        }
        return new String(copyOfRange);
    }

    public static void A05() {
        A0B = new byte[]{101, -82, -72, 101, -73, -86, -72, -71, -73, -82, -88, -71, -86, -87, 115, 101, -104, -80, -82, -75, -75, -82, -77, -84, 101, -72, -66, -77, -88, -48, -1, -1, -81, -8, -3, -81, -15, -16, -14, -6, -10, 1, -2, 4, -3, -13, -67, -54, -24, -11, -11, -10, -5, -89, -22, -7, -20, -24, -5, -20, -89, -6, -20, -7, -3, -20, -7, -89, -23, -4, -11, -21, -13, -20, -89, -2, -16, -5, -17, -89, -11, -10, -11, -76, -6, -20, -7, -3, -20, -7, -89, -10, -2, -11, -20, -21, -89, -23, -4, -11, -21, -13, -20, -89, -48, -53, -85, -56, -37, -56, -121, -41, -39, -42, -54, -52, -38, -38, -48, -43, -50, -121, -42, -41, -37, -48, -42, -43, -121, -49, -12, -4, -25, -14, -17, -22, -90, -8, -21, -20, -8, -21, -7, -18, -90, -6, -17, -13, -21, -64, -90, -85, -22, -79, -56, -38, -125, -42, -56, -43, -39, -56, -43, -112, -46, -38, -47, -56, -57, -125, -59, -40, -47, -57, -49, -56, -125, -58, -43, -56, -60, -41, -56, -57, -99, -125, -120, -42, -101, -63, -74, -85, -80, -70, -73, -74, -79, -62, -87, -68, -79, -73, -74, 104, -70, -83, -71, -67, -83, -69, -68, 104, -68, -73, 104, 109, -69, -126, 82, 109, -69, -88, -50, -61, -72, -67, -57, -60, -61, -66, -49, -74, -55, -66, -60, -61, 117, -57, -70, -56, -59, -60, -61, -56, -70, -113, 95, 122, -56, 114, -104, -115, -126, -121, -111, -114, -115, -120, -103, Byte.MIN_VALUE, -109, -120, -114, -115, 63, -111, -108, -115, 63, -123, Byte.MIN_VALUE, -120, -117, -124, -125, 90, 63, -123, -114, -111, -126, -120, -115, -122, 63, -120, -115, 63, 68, -125, 63, -110, -124, -126, -114, -115, -125, -110, -103, -84, -91, -101, -93, -100, -86, -107, -95, -96, -90, -105, -86, -90, -122, -125, -106, -125, -89, -86, -81, -88, -90, -77, -79, -77, -86, -81, -75, -39, -54, -30, -43, -40, -54, -51, -90, -45, -58, -57, -45, -58, -44, -55, -40, -53, -41, -37, -53, -39, -38, -34, -47, -33, -36, -37, -38, -33, -47, -58, -77, -60, -71, -73, -58, -79, -60, -73, -72, -60, -73, -59, -70, -79, -59};
    }

    public static void A06() {
        A0C = new String[]{"5Oiv1GLvIq7zEHzIHOTPzi3kaYzi9CKu", "OYJ8Vha7o3AKqeq5fQgjy4YAYzCEKBrH", "4fHxCa0vWIAizdOtLSYViH6HX8wZM136", "7SeobKfCaIBp1RCtBr0PVzHsRPnznuT1", "fOxTiSwrZex6", "3vZIMeafrjOpHP1eiyT8MHuy7IIJRNdQ", "XI5vdZH0G6FndxBvW8fNBqRq2FpLqBJ1", "pJZH6qXQIaEu24ksEJ9XliOUqsc1pAkZ"};
    }

    public G1(AnonymousClass8D r2, AnonymousClass8Q r3, QK qk, String str, AbstractC0773Qu qu, C0772Qt qt) {
        this.A01 = r2;
        this.A02 = r3;
        this.A03 = qk;
        this.A07 = str;
        this.A06 = qu;
        this.A05 = qt;
    }

    public static int A00(JSONObject jSONObject) throws JSONException {
        int i = jSONObject.getJSONObject(A01(335, 7, 80)).getInt(A01(357, 16, 65));
        if (i > 0) {
            return i;
        }
        throw new JSONException(String.format(Locale.US, A01(129, 24, 117), Integer.valueOf(i)));
    }

    private Set<AbstractC0777Qy> A02(JSONObject responseObject) throws JSONException {
        HashSet hashSet = new HashSet();
        JSONObject jSONObject = responseObject.getJSONObject(A01(349, 8, 91));
        JSONObject jSONObject2 = responseObject.getJSONObject(A01(298, 7, 38));
        for (G7 g7 : this.A0A.values()) {
            int i = C0776Qx.A01[R3.A00(jSONObject.getString(g7.A6a().A04())).ordinal()];
            if (i == 1) {
                hashSet.add(new AnonymousClass4J(g7, jSONObject2.getJSONObject(g7.A6a().A04()).getJSONObject(A01(312, 4, 17)), jSONObject2.getJSONObject(g7.A6a().A04()).optJSONObject(A01(316, 11, 48))));
            } else if (i == 2) {
                hashSet.add(new AnonymousClass4D(g7));
            } else {
                throw new AssertionError();
            }
        }
        for (AnonymousClass4Y r2 : this.A09.values()) {
            int i2 = C0776Qx.A00[EnumC0769Qq.A00(jSONObject.getString(r2.A6a().A04())).ordinal()];
            if (i2 == 1) {
                hashSet.add(new AnonymousClass4M(r2));
            } else if (i2 == 2) {
                hashSet.add(new AnonymousClass4C(r2));
            } else {
                throw new AssertionError();
            }
        }
        return hashSet;
    }

    private JSONObject A03(Map<AbstractC0762Qj, R2> map, Map<G6, EnumC0768Qp> map2, Map<G6, JSONObject> map3, Map<G6, JSONObject> map4) throws JSONException {
        String A012;
        JSONObject bundleData = new JSONObject();
        for (Map.Entry<AbstractC0762Qj, R2> entry : map.entrySet()) {
            bundleData.put(entry.getKey().A6a().A04(), entry.getValue().A02());
        }
        for (Map.Entry<G6, EnumC0768Qp> entry2 : map2.entrySet()) {
            bundleData.put(entry2.getKey().A6a().A04(), entry2.getValue().A03());
        }
        JSONObject jSONObject = new JSONObject();
        Iterator<Map.Entry<AbstractC0762Qj, R2>> it = map.entrySet().iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            A012 = A01(316, 11, 48);
            if (!hasNext) {
                break;
            }
            Map.Entry<AbstractC0762Qj, R2> next = it.next();
            if (next.getValue() == R2.A04) {
                JSONObject jSONObject2 = new JSONObject();
                AbstractC0762Qj key = next.getKey();
                jSONObject.put(key.A6a().A04(), jSONObject2);
                if (next.getKey().A6a().A05()) {
                    jSONObject2.put(A012, key.A6W());
                } else {
                    jSONObject2.put(A012, JSONObject.NULL);
                }
                jSONObject.put(key.A6a().A04(), jSONObject2);
            }
        }
        for (Map.Entry<G6, EnumC0768Qp> entry3 : map2.entrySet()) {
            JSONObject jSONObject3 = new JSONObject();
            G6 key2 = entry3.getKey();
            jSONObject3.put(A012, map4.get(entry3.getKey()));
            if (entry3.getValue() == EnumC0768Qp.A05) {
                jSONObject3.put(A01(312, 4, 17), map3.get(key2));
                jSONObject.put(key2.A6a().A04(), jSONObject3);
            } else {
                String A042 = key2.A6a().A04();
                String[] strArr = A0C;
                if (strArr[1].charAt(20) != strArr[6].charAt(20)) {
                    A0C[5] = "j6hI8A69HBwx3QyEu85lNgwu8aXeWQ7U";
                    jSONObject.put(A042, jSONObject3);
                } else {
                    throw new RuntimeException();
                }
            }
        }
        JSONObject jSONObject4 = new JSONObject();
        for (Map.Entry<String, String> entry4 : this.A06.A6O().entrySet()) {
            if (entry4.getValue() != null) {
                jSONObject4.put(entry4.getKey(), entry4.getValue());
            }
        }
        JSONObject jSONObject5 = new JSONObject();
        jSONObject5.put(A01(342, 7, 85), bundleData);
        jSONObject5.put(A01(298, 7, 38), jSONObject);
        jSONObject5.put(A01(HttpStatus.SC_USE_PROXY, 7, 33), jSONObject4);
        return jSONObject5;
    }

    /* JADX INFO: Multiple debug info for r2v0 java.util.Map<com.facebook.ads.redexgen.X.G6, org.json.JSONObject>: [D('waitForResponse' java.util.concurrent.CountDownLatch), D('data' java.util.concurrent.atomic.AtomicReference<org.json.JSONObject>)] */
    /* JADX INFO: Multiple debug info for r3v2 java.util.concurrent.atomic.AtomicReference: [D('failureContainer' java.util.concurrent.atomic.AtomicReference<java.lang.Throwable>), D('listener' com.facebook.ads.redexgen.X.Qz)] */
    /* JADX INFO: Multiple debug info for r0v31 java.util.Set<com.facebook.ads.redexgen.X.Qy>: [D('syncRequest' org.json.JSONObject), D('responses' java.util.Set<com.facebook.ads.sync.SyncModuleImpl$BundleResponse>)] */
    /* JADX INFO: Multiple debug info for r0v40 com.facebook.ads.redexgen.X.Qy: [D('responses' java.util.Set<com.facebook.ads.sync.SyncModuleImpl$BundleResponse>), D('response' com.facebook.ads.redexgen.X.Qy)] */
    private void A04() throws Throwable {
        Map<SyncModifiableBundle, SyncClientBundleRequestType> clientBundleRequests = new HashMap<>();
        Map<SyncModifiableBundle, JSONObject> clientBundleData = new HashMap<>();
        Map<SyncModifiableBundle, JSONObject> clientBundleFingerprint = new HashMap<>();
        Map<G6, JSONObject> hashMap = new HashMap<>();
        synchronized (this) {
            Iterator<G7> it = this.A0A.values().iterator();
            while (it.hasNext()) {
                SyncModifiableBundle syncModifiableBundle = (G7) it.next();
                if (syncModifiableBundle.A89()) {
                    clientBundleRequests.put(syncModifiableBundle, R2.A04);
                } else {
                    clientBundleRequests.put(syncModifiableBundle, R2.A03);
                }
            }
            AtomicReference<JSONObject> atomicReference = new AtomicReference<>();
            AtomicReference<JSONObject> atomicReference2 = new AtomicReference<>();
            Iterator<AnonymousClass4Y> it2 = this.A09.values().iterator();
            while (it2.hasNext()) {
                SyncModifiableBundle syncModifiableBundle2 = (AnonymousClass4Y) it2.next();
                if (syncModifiableBundle2.A89()) {
                    if (syncModifiableBundle2.A08(atomicReference, atomicReference2)) {
                        clientBundleData.put(syncModifiableBundle2, EnumC0768Qp.A05);
                        clientBundleFingerprint.put(syncModifiableBundle2, atomicReference.get());
                    } else {
                        clientBundleData.put(syncModifiableBundle2, EnumC0768Qp.A04);
                    }
                    hashMap.put(syncModifiableBundle2, atomicReference2.get());
                }
            }
            Iterator<AbstractC0778Qz> it3 = this.A08.iterator();
            if (it3.hasNext()) {
                it3.next();
                throw null;
            }
        }
        CountDownLatch countDownLatch = new CountDownLatch(1);
        AtomicReference atomicReference3 = new AtomicReference();
        AtomicReference<Throwable> failureContainer = new AtomicReference<>();
        JSONObject A032 = A03(clientBundleRequests, clientBundleData, clientBundleFingerprint, hashMap);
        String.format(Locale.US, A01(188, 33, 55), this.A07, A032.toString(2));
        QK qk = this.A03;
        String str = this.A07;
        qk.ACR(str, (A01(327, 8, 88) + URLEncoder.encode(A032.toString())).getBytes(), new G4(this, atomicReference3, failureContainer, countDownLatch));
        while (true) {
            long count = countDownLatch.getCount();
            if (A0C[5].charAt(3) != 'I') {
                throw new RuntimeException();
            }
            A0C[4] = "9Vx4r4uQ95Y8";
            if (count > 0) {
                try {
                    countDownLatch.await();
                } catch (InterruptedException unused) {
                }
            } else {
                synchronized (this) {
                    if (failureContainer.get() == null) {
                        Set<SyncModuleImpl.BundleResponse> responses = A02((JSONObject) atomicReference3.get());
                        HashMap hashMap2 = new HashMap();
                        HashMap hashMap3 = new HashMap();
                        Iterator<SyncModuleImpl.BundleResponse> it4 = responses.iterator();
                        while (it4.hasNext()) {
                            ((AbstractC0777Qy) it4.next()).A3Q(hashMap2, hashMap3);
                        }
                        this.A04.A04(A00((JSONObject) atomicReference3.get()));
                        Iterator<AbstractC0778Qz> it5 = this.A08.iterator();
                        if (it5.hasNext()) {
                            it5.next();
                            throw null;
                        }
                    } else {
                        throw failureContainer.get();
                    }
                }
                return;
            }
        }
    }

    public static void A07(String str, AtomicReference<JSONObject> atomicReference, AtomicReference<Throwable> atomicReference2) {
        String.format(Locale.US, A01(221, 28, 68), str);
        try {
            atomicReference.set((JSONObject) new JSONTokener(str).nextValue());
        } catch (ClassCastException | JSONException e) {
            atomicReference2.set(e);
        }
    }

    private synchronized void A09(Throwable th) {
        Iterator<AbstractC0778Qz> it = this.A08.iterator();
        if (it.hasNext()) {
            it.next();
            new HashMap();
            new HashMap();
            throw null;
        }
        String[] strArr = A0C;
        if (strArr[7].charAt(21) != strArr[0].charAt(21)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0C;
        strArr2[1] = "jOM2sC9axZtdiRuTC4uiooC1eDwAnM4L";
        strArr2[6] = "oYYGFZG36lntZdV46ZffLgIrsbHURGKH";
    }

    @SuppressLint({"CatchGeneralException"})
    public final void A0A() {
        if (this.A02.A8A()) {
            String str = A01(FacebookMediationAdapter.ERROR_WRONG_NATIVE_TYPE, 23, 86) + this.A02.A6C().A08() + A01(0, 29, 52);
            A09(new R1());
        } else {
            try {
                if (!J4.A1F(this.A01) || this.A01.A02().A83()) {
                    A04();
                } else {
                    throw new IllegalStateException(A01(29, 18, 126));
                }
            } catch (Throwable th) {
                String.format(Locale.US, A01(249, 49, 14), Integer.valueOf(this.A05.A01()));
                A09(th);
                this.A04.A04(this.A05.A01());
            }
        }
        Runnable runnable = this.A00;
        if (runnable != null) {
            runnable.run();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0774Qv
    public final synchronized AbstractC0762Qj A4O(EnumC0763Qk qk) {
        if (qk.A03() != EnumC0765Qm.A03) {
            throw new IllegalArgumentException(A01(47, 59, 118));
        } else if (this.A0A.containsKey(qk)) {
            return this.A0A.get(qk);
        } else {
            G7 g7 = new G7(qk);
            this.A0A.put(qk, g7);
            Iterator<AbstractC0778Qz> it = this.A08.iterator();
            if (it.hasNext()) {
                it.next();
                throw null;
            }
            String.format(Locale.US, A01(153, 35, 82), qk);
            return g7;
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0774Qv
    public final void A5O() {
        this.A04.A03();
    }
}
