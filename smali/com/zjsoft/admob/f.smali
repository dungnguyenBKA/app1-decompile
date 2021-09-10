.class Lcom/zjsoft/admob/f;
.super Lcom/google/android/gms/ads/AdListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/zjsoft/admob/e;


# direct methods
.method constructor <init>(Lcom/zjsoft/admob/e;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zjsoft/admob/f;->b:Lcom/zjsoft/admob/e;

    iput-object p2, p0, Lcom/zjsoft/admob/f;->a:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdClicked()V

    .line 2
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object v0

    iget-object v1, p0, Lcom/zjsoft/admob/f;->a:Landroid/app/Activity;

    const-string v2, "AdmobInterstitial:onAdClicked"

    invoke-virtual {v0, v1, v2}, Lfc0;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/zjsoft/admob/f;->b:Lcom/zjsoft/admob/e;

    iget-object v0, v0, Lcom/zjsoft/admob/e;->d:Lub0$a;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/zjsoft/admob/f;->a:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lub0$a;->c(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onAdClosed()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdClosed()V

    .line 2
    iget-object v0, p0, Lcom/zjsoft/admob/f;->b:Lcom/zjsoft/admob/e;

    iget-object v0, v0, Lcom/zjsoft/admob/e;->d:Lub0$a;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/zjsoft/admob/f;->a:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lub0$a;->b(Landroid/content/Context;)V

    .line 4
    :cond_0
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object v0

    iget-object v1, p0, Lcom/zjsoft/admob/f;->a:Landroid/app/Activity;

    const-string v2, "AdmobInterstitial:onAdClosed"

    invoke-virtual {v0, v1, v2}, Lfc0;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/zjsoft/admob/f;->b:Lcom/zjsoft/admob/e;

    invoke-static {v0}, Lcom/zjsoft/admob/e;->m(Lcom/zjsoft/admob/e;)V

    return-void
.end method

.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V

    .line 2
    iget-object v0, p0, Lcom/zjsoft/admob/f;->b:Lcom/zjsoft/admob/e;

    iget-object v0, v0, Lcom/zjsoft/admob/e;->d:Lub0$a;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/zjsoft/admob/f;->a:Landroid/app/Activity;

    new-instance v2, Lkb0;

    const-string v3, "AdmobInterstitial:onAdFailedToLoad errorCode:"

    invoke-static {v3}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lkb0;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lub0$a;->d(Landroid/app/Activity;Lkb0;)V

    .line 4
    :cond_0
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object p1

    iget-object v0, p0, Lcom/zjsoft/admob/f;->a:Landroid/app/Activity;

    const-string v1, "AdmobInterstitial:onAdFailedToLoad"

    invoke-virtual {p1, v0, v1}, Lfc0;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onAdImpression()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdImpression()V

    return-void
.end method

.method public onAdLoaded()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdLoaded()V

    .line 2
    iget-object v0, p0, Lcom/zjsoft/admob/f;->b:Lcom/zjsoft/admob/e;

    iget-object v0, v0, Lcom/zjsoft/admob/e;->d:Lub0$a;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/zjsoft/admob/f;->a:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lub0$a;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object v0

    iget-object v1, p0, Lcom/zjsoft/admob/f;->a:Landroid/app/Activity;

    const-string v2, "AdmobInterstitial:onAdLoaded"

    invoke-virtual {v0, v1, v2}, Lfc0;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onAdOpened()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdOpened()V

    .line 2
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object v0

    iget-object v1, p0, Lcom/zjsoft/admob/f;->a:Landroid/app/Activity;

    const-string v2, "AdmobInterstitial:onAdOpened"

    invoke-virtual {v0, v1, v2}, Lfc0;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/zjsoft/admob/f;->b:Lcom/zjsoft/admob/e;

    iget-object v0, v0, Lcom/zjsoft/admob/e;->d:Lub0$a;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/zjsoft/admob/f;->a:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lub0$a;->e(Landroid/content/Context;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/zjsoft/admob/f;->b:Lcom/zjsoft/admob/e;

    invoke-static {v0}, Lcom/zjsoft/admob/e;->m(Lcom/zjsoft/admob/e;)V

    return-void
.end method
