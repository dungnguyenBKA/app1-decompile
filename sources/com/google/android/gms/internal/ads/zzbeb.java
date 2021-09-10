package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.ads.internal.overlay.zzc;
import com.google.android.gms.ads.internal.zzb;
import com.google.android.gms.ads.internal.zzm;
import com.google.android.gms.common.util.k;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
public interface zzbeb extends zzm, zzaki, zzakw, zzbbo, zzbdu, zzbfa, zzbfd, zzbfh, zzbfl, zzbfm, zzbfo, zzqw, zzvc {
    void destroy();

    @Override // com.google.android.gms.internal.ads.zzbfd, com.google.android.gms.internal.ads.zzbbo
    Context getContext();

    int getHeight();

    ViewGroup.LayoutParams getLayoutParams();

    void getLocationOnScreen(int[] iArr);

    ViewParent getParent();

    @Override // com.google.android.gms.internal.ads.zzbfo
    View getView();

    WebView getWebView();

    int getWidth();

    boolean isDestroyed();

    void loadData(String str, String str2, String str3);

    void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5);

    void loadUrl(String str);

    void measure(int i, int i2);

    void onPause();

    void onResume();

    @Override // com.google.android.gms.internal.ads.zzbbo
    void setBackgroundColor(int i);

    void setOnClickListener(View.OnClickListener onClickListener);

    void setOnTouchListener(View.OnTouchListener onTouchListener);

    void setRequestedOrientation(int i);

    void setWebChromeClient(WebChromeClient webChromeClient);

    void setWebViewClient(WebViewClient webViewClient);

    void zza(zzc zzc);

    void zza(zzaea zzaea);

    void zza(zzaef zzaef);

    @Override // com.google.android.gms.internal.ads.zzbbo
    void zza(zzbev zzbev);

    void zza(zzbft zzbft);

    void zza(zzdmw zzdmw, zzdnb zzdnb);

    void zza(zzsh zzsh);

    void zza(String str, k<zzaif<? super zzbeb>> kVar);

    void zza(String str, zzaif<? super zzbeb> zzaif);

    @Override // com.google.android.gms.internal.ads.zzbbo
    void zza(String str, zzbdd zzbdd);

    @Override // com.google.android.gms.internal.ads.zzbbo
    zzbev zzabc();

    @Override // com.google.android.gms.internal.ads.zzbfd, com.google.android.gms.internal.ads.zzbbo
    Activity zzabe();

    @Override // com.google.android.gms.internal.ads.zzbbo
    zzb zzabf();

    @Override // com.google.android.gms.internal.ads.zzbbo
    zzacd zzabi();

    @Override // com.google.android.gms.internal.ads.zzbbo, com.google.android.gms.internal.ads.zzbfl
    zzazn zzabj();

    @Override // com.google.android.gms.internal.ads.zzbdu
    zzdmw zzacp();

    void zzacq();

    void zzacr();

    Context zzacs();

    zzc zzact();

    zzc zzacu();

    @Override // com.google.android.gms.internal.ads.zzbfj
    zzbft zzacv();

    String zzacw();

    zzbfn zzacx();

    WebViewClient zzacy();

    boolean zzacz();

    @Override // com.google.android.gms.internal.ads.zzbfm
    zzei zzada();

    zv zzadb();

    boolean zzadc();

    void zzadd();

    boolean zzade();

    boolean zzadf();

    void zzadg();

    void zzadh();

    zzaef zzadi();

    void zzadj();

    void zzadk();

    zzsh zzadl();

    boolean zzadm();

    @Override // com.google.android.gms.internal.ads.zzbfa
    zzdnb zzadn();

    void zzam(boolean z);

    void zzaq(zv zvVar);

    void zzay(boolean z);

    void zzaz(boolean z);

    void zzb(zzc zzc);

    void zzb(String str, zzaif<? super zzbeb> zzaif);

    void zzb(String str, String str2, String str3);

    boolean zzb(boolean z, int i);

    void zzba(boolean z);

    void zzbb(boolean z);

    void zzbv(Context context);

    void zzdu(int i);

    void zzwb();
}
