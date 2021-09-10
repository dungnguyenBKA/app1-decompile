package com.facebook.ads.redexgen.X;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.File;
import java.util.NavigableSet;

/* renamed from: com.facebook.ads.redexgen.X.Hh  reason: case insensitive filesystem */
public interface AbstractC0535Hh {
    void A3R(String str, C0547Ht ht) throws C0533Hf;

    void A45(File file) throws C0533Hf;

    long A5n();

    long A5o(String str, long j, long j2);

    @NonNull
    NavigableSet<C0539Hl> A5p(String str);

    long A60(String str);

    AbstractC0545Hr A61(String str);

    void AD3(C0539Hl hl);

    void ADA(C0539Hl hl) throws C0533Hf;

    void ADh(String str, long j) throws C0533Hf;

    File AE6(String str, long j, long j2) throws C0533Hf;

    C0539Hl AE8(String str, long j) throws InterruptedException, C0533Hf;

    @Nullable
    C0539Hl AE9(String str, long j) throws C0533Hf;
}
