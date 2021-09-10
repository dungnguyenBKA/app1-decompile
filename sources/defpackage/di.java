package defpackage;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.bumptech.glide.load.i;
import com.bumptech.glide.load.k;
import java.util.List;

/* renamed from: di  reason: default package */
public class di implements k<Uri, Drawable> {
    private final Context a;

    public di(Context context) {
        this.a = context.getApplicationContext();
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, com.bumptech.glide.load.i] */
    @Override // com.bumptech.glide.load.k
    public boolean a(Uri uri, i iVar) {
        return uri.getScheme().equals("android.resource");
    }

    /* Return type fixed from 'he' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, int, int, com.bumptech.glide.load.i] */
    @Override // com.bumptech.glide.load.k
    public /* bridge */ /* synthetic */ he<Drawable> b(Uri uri, int i, int i2, i iVar) {
        return c(uri);
    }

    /* JADX WARN: Incorrect args count in method signature: (Landroid/net/Uri;IILcom/bumptech/glide/load/i;)Lhe<Landroid/graphics/drawable/Drawable;>; */
    public he c(Uri uri) {
        Context context;
        int i;
        String authority = uri.getAuthority();
        if (authority.equals(this.a.getPackageName())) {
            context = this.a;
        } else {
            try {
                context = this.a.createPackageContext(authority, 0);
            } catch (PackageManager.NameNotFoundException e) {
                if (authority.contains(this.a.getPackageName())) {
                    context = this.a;
                } else {
                    throw new IllegalArgumentException("Failed to obtain context or unrecognized Uri format for: " + uri, e);
                }
            }
        }
        List<String> pathSegments = uri.getPathSegments();
        if (pathSegments.size() == 2) {
            List<String> pathSegments2 = uri.getPathSegments();
            String authority2 = uri.getAuthority();
            String str = pathSegments2.get(0);
            String str2 = pathSegments2.get(1);
            i = context.getResources().getIdentifier(str2, str, authority2);
            if (i == 0) {
                i = Resources.getSystem().getIdentifier(str2, str, "android");
            }
            if (i == 0) {
                throw new IllegalArgumentException("Failed to find resource id for: " + uri);
            }
        } else if (pathSegments.size() == 1) {
            try {
                i = Integer.parseInt(uri.getPathSegments().get(0));
            } catch (NumberFormatException e2) {
                throw new IllegalArgumentException("Unrecognized Uri format: " + uri, e2);
            }
        } else {
            throw new IllegalArgumentException("Unrecognized Uri format: " + uri);
        }
        return ci.b(zh.b(this.a, context, i));
    }
}
