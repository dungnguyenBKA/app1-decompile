package com.facebook.ads.redexgen.X;

import android.content.pm.PackageManager;
import android.content.pm.Signature;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.util.HashMap;

public class UW implements AbstractC02806e {
    public final /* synthetic */ C0863Uj A00;

    public UW(C0863Uj uj) {
        this.A00 = uj;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02806e
    public final AbstractC02956t A5F() throws CertificateException, PackageManager.NameNotFoundException, NoSuchAlgorithmException {
        Signature[] signatureArr = this.A00.A00.getPackageManager().getPackageInfo(this.A00.A00.getPackageName(), 64).signatures;
        HashMap hashMap = new HashMap();
        for (int i = 0; i < signatureArr.length; i++) {
            hashMap.put(Integer.valueOf(i), new C0862Ui(signatureArr[i]));
        }
        return this.A00.A05(hashMap);
    }
}
