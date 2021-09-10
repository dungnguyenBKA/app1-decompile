.class Lcom/zjsoft/fan/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/ads/InterstitialAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjsoft/fan/c;->d(Landroid/app/Activity;Llb0;Lub0$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lub0$a;

.field final synthetic c:Lcom/zjsoft/fan/c;


# direct methods
.method constructor <init>(Lcom/zjsoft/fan/c;Landroid/app/Activity;Lub0$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zjsoft/fan/c$b;->c:Lcom/zjsoft/fan/c;

    iput-object p2, p0, Lcom/zjsoft/fan/c$b;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/zjsoft/fan/c$b;->b:Lub0$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 2

    .line 1
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object p1

    iget-object v0, p0, Lcom/zjsoft/fan/c$b;->a:Landroid/app/Activity;

    const-string v1, "FanInterstitial:onAdClicked"

    invoke-virtual {p1, v0, v1}, Lfc0;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/zjsoft/fan/c$b;->b:Lub0$a;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/zjsoft/fan/c$b;->a:Landroid/app/Activity;

    invoke-interface {p1, v0}, Lub0$a;->c(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 2

    .line 1
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object p1

    iget-object v0, p0, Lcom/zjsoft/fan/c$b;->a:Landroid/app/Activity;

    const-string v1, "FanInterstitial:onAdLoaded"

    invoke-virtual {p1, v0, v1}, Lfc0;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/zjsoft/fan/c$b;->b:Lub0$a;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/zjsoft/fan/c$b;->a:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lub0$a;->a(Landroid/content/Context;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 4

    .line 1
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object p1

    iget-object v0, p0, Lcom/zjsoft/fan/c$b;->a:Landroid/app/Activity;

    const-string v1, "FanInterstitial:onError errorCode:"

    invoke-static {v1}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lfc0;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/zjsoft/fan/c$b;->b:Lub0$a;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/zjsoft/fan/c$b;->a:Landroid/app/Activity;

    new-instance v2, Lkb0;

    invoke-static {v1}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2}, Lkb0;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0, v2}, Lub0$a;->d(Landroid/app/Activity;Lkb0;)V

    :cond_0
    return-void
.end method

.method public onInterstitialDismissed(Lcom/facebook/ads/Ad;)V
    .locals 2

    .line 1
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object p1

    iget-object v0, p0, Lcom/zjsoft/fan/c$b;->a:Landroid/app/Activity;

    const-string v1, "FanInterstitial:onInterstitialDismissed"

    invoke-virtual {p1, v0, v1}, Lfc0;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/zjsoft/fan/c$b;->b:Lub0$a;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/zjsoft/fan/c$b;->a:Landroid/app/Activity;

    invoke-interface {p1, v0}, Lub0$a;->b(Landroid/content/Context;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/zjsoft/fan/c$b;->c:Lcom/zjsoft/fan/c;

    invoke-static {p1}, Lcom/zjsoft/fan/c;->n(Lcom/zjsoft/fan/c;)V

    return-void
.end method

.method public onInterstitialDisplayed(Lcom/facebook/ads/Ad;)V
    .locals 2

    .line 1
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object p1

    iget-object v0, p0, Lcom/zjsoft/fan/c$b;->a:Landroid/app/Activity;

    const-string v1, "FanInterstitial:onInterstitialDisplayed"

    invoke-virtual {p1, v0, v1}, Lfc0;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/zjsoft/fan/c$b;->c:Lcom/zjsoft/fan/c;

    invoke-static {p1}, Lcom/zjsoft/fan/c;->n(Lcom/zjsoft/fan/c;)V

    return-void
.end method

.method public onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .locals 2

    .line 1
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object p1

    iget-object v0, p0, Lcom/zjsoft/fan/c$b;->a:Landroid/app/Activity;

    const-string v1, "FanInterstitial:onLoggingImpression"

    invoke-virtual {p1, v0, v1}, Lfc0;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/zjsoft/fan/c$b;->b:Lub0$a;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/zjsoft/fan/c$b;->a:Landroid/app/Activity;

    invoke-interface {p1, v0}, Lub0$a;->e(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
