package com.google.android.gms.analytics;

import java.util.Comparator;

final class g implements Comparator<k> {
    g() {
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(k kVar, k kVar2) {
        return kVar.getClass().getCanonicalName().compareTo(kVar2.getClass().getCanonicalName());
    }
}
