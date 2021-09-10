.class Lcom/zjsoft/admob/c;
.super Lcom/google/android/gms/ads/AdListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/zjsoft/admob/b;


# direct methods
.method constructor <init>(Lcom/zjsoft/admob/b;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zjsoft/admob/c;->b:Lcom/zjsoft/admob/b;

    iput-object p2, p0, Lcom/zjsoft/admob/c;->a:Landroid/app/Activity;

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

    iget-object v1, p0, Lcom/zjsoft/admob/c;->a:Landroid/app/Activity;

    const-string v2, "AdmobBanner:onAdClicked"

    invoke-virtual {v0, v1, v2}, Lfc0;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onAdClosed()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdClosed()V

    .line 2
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object v0

    iget-object v1, p0, Lcom/zjsoft/admob/c;->a:Landroid/app/Activity;

    const-string v2, "AdmobBanner:onAdClosed"

    invoke-virtual {v0, v1, v2}, Lfc0;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V

    .line 2
    iget-object v0, p0, Lcom/zjsoft/admob/c;->b:Lcom/zjsoft/admob/b;

    iget-object v0, v0, Lcom/zjsoft/admob/b;->b:Lub0$a;

    const-string v1, " -> "

    if-eqz v0, :cond_0

    .line 3
    iget-object v2, p0, Lcom/zjsoft/admob/c;->a:Landroid/app/Activity;

    new-instance v3, Lkb0;

    const-string v4, "AdmobBanner:onAdFailedToLoad, errorCode : "

    invoke-static {v4}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lkb0;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2, v3}, Lub0$a;->d(Landroid/app/Activity;Lkb0;)V

    .line 4
    :cond_0
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object v0

    iget-object v2, p0, Lcom/zjsoft/admob/c;->a:Landroid/app/Activity;

    const-string v3, "AdmobBanner:onAdFailedToLoad errorCode:"

    invoke-static {v3}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lfc0;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onAdImpression()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdImpression()V

    .line 2
    iget-object v0, p0, Lcom/zjsoft/admob/c;->b:Lcom/zjsoft/admob/b;

    iget-object v0, v0, Lcom/zjsoft/admob/b;->b:Lub0$a;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/zjsoft/admob/c;->a:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lub0$a;->e(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onAdLoaded()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdLoaded()V

    .line 2
    iget-object v0, p0, Lcom/zjsoft/admob/c;->b:Lcom/zjsoft/admob/b;

    iget-object v1, v0, Lcom/zjsoft/admob/b;->b:Lub0$a;

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, p0, Lcom/zjsoft/admob/c;->a:Landroid/app/Activity;

    iget-object v0, v0, Lcom/zjsoft/admob/b;->f:Lcom/google/android/gms/ads/AdView;

    invoke-interface {v1, v2, v0}, Lub0$a;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object v0

    iget-object v1, p0, Lcom/zjsoft/admob/c;->a:Landroid/app/Activity;

    const-string v2, "AdmobBanner:onAdLoaded"

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

    iget-object v1, p0, Lcom/zjsoft/admob/c;->a:Landroid/app/Activity;

    const-string v2, "AdmobBanner:onAdOpened"

    invoke-virtual {v0, v1, v2}, Lfc0;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/zjsoft/admob/c;->b:Lcom/zjsoft/admob/b;

    iget-object v0, v0, Lcom/zjsoft/admob/b;->b:Lub0$a;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/zjsoft/admob/c;->a:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lub0$a;->c(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
