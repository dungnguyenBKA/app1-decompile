package defpackage;

import android.content.res.AssetManager;
import android.os.ParcelFileDescriptor;

/* renamed from: yc  reason: default package */
public class yc extends sc<ParcelFileDescriptor> {
    public yc(AssetManager assetManager, String str) {
        super(assetManager, str);
    }

    @Override // defpackage.uc
    public Class<ParcelFileDescriptor> a() {
        return ParcelFileDescriptor.class;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    /* access modifiers changed from: protected */
    @Override // defpackage.sc
    public void c(ParcelFileDescriptor parcelFileDescriptor) {
        parcelFileDescriptor.close();
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* access modifiers changed from: protected */
    @Override // defpackage.sc
    public ParcelFileDescriptor f(AssetManager assetManager, String str) {
        return assetManager.openFd(str).getParcelFileDescriptor();
    }
}
