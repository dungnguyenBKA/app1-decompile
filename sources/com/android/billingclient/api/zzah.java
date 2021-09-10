package com.android.billingclient.api;

import java.util.Collections;
import java.util.List;

final class zzah implements b, e, i, l, m, p {
    zzah() {
    }

    public static native void nativeOnAcknowledgePurchaseResponse(int i, String str, long j);

    public static native void nativeOnBillingServiceDisconnected();

    public static native void nativeOnBillingSetupFinished(int i, String str, long j);

    public static native void nativeOnConsumePurchaseResponse(int i, String str, String str2, long j);

    public static native void nativeOnPriceChangeConfirmationResult(int i, String str, long j);

    public static native void nativeOnPurchaseHistoryResponse(int i, String str, k[] kVarArr, long j);

    public static native void nativeOnPurchasesUpdated(int i, String str, j[] jVarArr);

    public static native void nativeOnQueryPurchasesResponse(int i, String str, j[] jVarArr, long j);

    public static native void nativeOnSkuDetailsResponse(int i, String str, n[] nVarArr, long j);

    @Override // com.android.billingclient.api.p
    public final void a(g gVar, List<n> list) {
        if (list == null) {
            list = Collections.emptyList();
        }
        nativeOnSkuDetailsResponse(gVar.b(), gVar.a(), (n[]) list.toArray(new n[list.size()]), 0);
    }

    @Override // com.android.billingclient.api.b
    public final void b(g gVar) {
        nativeOnAcknowledgePurchaseResponse(gVar.b(), gVar.a(), 0);
    }

    @Override // com.android.billingclient.api.m
    public final void c(g gVar, List<j> list) {
        if (list == null) {
            list = Collections.emptyList();
        }
        nativeOnPurchasesUpdated(gVar.b(), gVar.a(), (j[]) list.toArray(new j[list.size()]));
    }

    @Override // com.android.billingclient.api.e
    public final void d(g gVar) {
        nativeOnBillingSetupFinished(gVar.b(), gVar.a(), 0);
    }

    @Override // com.android.billingclient.api.e
    public final void e() {
        nativeOnBillingServiceDisconnected();
    }

    @Override // com.android.billingclient.api.i
    public final void f(g gVar, String str) {
        nativeOnConsumePurchaseResponse(gVar.b(), gVar.a(), str, 0);
    }

    public final void g(g gVar, List<k> list) {
        if (list == null) {
            list = Collections.emptyList();
        }
        nativeOnPurchaseHistoryResponse(gVar.b(), gVar.a(), (k[]) list.toArray(new k[list.size()]), 0);
    }
}
