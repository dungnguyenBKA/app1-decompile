package defpackage;

import android.content.res.AssetManager;
import java.io.InputStream;

/* renamed from: ed  reason: default package */
public class ed extends sc<InputStream> {
    public ed(AssetManager assetManager, String str) {
        super(assetManager, str);
    }

    @Override // defpackage.uc
    public Class<InputStream> a() {
        return InputStream.class;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    /* access modifiers changed from: protected */
    @Override // defpackage.sc
    public void c(InputStream inputStream) {
        inputStream.close();
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* access modifiers changed from: protected */
    @Override // defpackage.sc
    public InputStream f(AssetManager assetManager, String str) {
        return assetManager.open(str);
    }
}
