package defpackage;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import com.google.ads.ADRequestList;
import java.io.FileNotFoundException;

/* renamed from: rc  reason: default package */
public final class rc extends cd<AssetFileDescriptor> {
    public rc(ContentResolver contentResolver, Uri uri) {
        super(contentResolver, uri);
    }

    @Override // defpackage.uc
    public Class<AssetFileDescriptor> a() {
        return AssetFileDescriptor.class;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    /* access modifiers changed from: protected */
    @Override // defpackage.cd
    public void c(AssetFileDescriptor assetFileDescriptor) {
        assetFileDescriptor.close();
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* access modifiers changed from: protected */
    @Override // defpackage.cd
    public AssetFileDescriptor f(Uri uri, ContentResolver contentResolver) {
        AssetFileDescriptor openAssetFileDescriptor = contentResolver.openAssetFileDescriptor(uri, ADRequestList.ORDER_R);
        if (openAssetFileDescriptor != null) {
            return openAssetFileDescriptor;
        }
        throw new FileNotFoundException("FileDescriptor is null for: " + uri);
    }
}
