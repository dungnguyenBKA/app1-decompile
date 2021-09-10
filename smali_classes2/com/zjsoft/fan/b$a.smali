.class Lcom/zjsoft/fan/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/ads/AdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjsoft/fan/b;->d(Landroid/app/Activity;Llb0;Lub0$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lub0$a;

.field final synthetic c:Lcom/zjsoft/fan/b;


# direct methods
.method constructor <init>(Lcom/zjsoft/fan/b;Landroid/app/Activity;Lub0$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zjsoft/fan/b$a;->c:Lcom/zjsoft/fan/b;

    iput-object p2, p0, Lcom/zjsoft/fan/b$a;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/zjsoft/fan/b$a;->b:Lub0$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 2

    .line 1
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object p1

    iget-object v0, p0, Lcom/zjsoft/fan/b$a;->a:Landroid/app/Activity;

    const-string v1, "FanBanner:onAdClicked"

    invoke-virtual {p1, v0, v1}, Lfc0;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/zjsoft/fan/b$a;->b:Lub0$a;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/zjsoft/fan/b$a;->a:Landroid/app/Activity;

    invoke-interface {p1, v0}, Lub0$a;->c(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 2

    .line 1
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object p1

    iget-object v0, p0, Lcom/zjsoft/fan/b$a;->a:Landroid/app/Activity;

    const-string v1, "FanBanner:onAdLoaded"

    invoke-virtual {p1, v0, v1}, Lfc0;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/zjsoft/fan/b$a;->b:Lub0$a;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/zjsoft/fan/b$a;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/zjsoft/fan/b$a;->c:Lcom/zjsoft/fan/b;

    iget-object v1, v1, Lcom/zjsoft/fan/b;->b:Lcom/facebook/ads/AdView;

    invoke-interface {p1, v0, v1}, Lub0$a;->a(Landroid/content/Context;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 4

    .line 1
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object v0

    iget-object v1, p0, Lcom/zjsoft/fan/b$a;->a:Landroid/app/Activity;

    const-string v2, "FanBanner:onError errorCode:"

    invoke-static {v2}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lfc0;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/zjsoft/fan/b$a;->b:Lub0$a;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/zjsoft/fan/b$a;->a:Landroid/app/Activity;

    new-instance v2, Lkb0;

    const-string v3, "FanBanner:onError, errorCode: "

    invoke-static {v3}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2}, Lkb0;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lub0$a;->d(Landroid/app/Activity;Lkb0;)V

    .line 4
    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/zjsoft/fan/b$a;->c:Lcom/zjsoft/fan/b;

    iget-object p2, p2, Lcom/zjsoft/fan/b;->b:Lcom/facebook/ads/AdView;

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p2}, Lcom/facebook/ads/AdView;->destroy()V

    :cond_1
    if-eqz p1, :cond_2

    .line 6
    invoke-interface {p1}, Lcom/facebook/ads/Ad;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .locals 2

    .line 1
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object p1

    iget-object v0, p0, Lcom/zjsoft/fan/b$a;->a:Landroid/app/Activity;

    const-string v1, "FanBanner:onLoggingImpression"

    invoke-virtual {p1, v0, v1}, Lfc0;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/zjsoft/fan/b$a;->b:Lub0$a;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/zjsoft/fan/b$a;->a:Landroid/app/Activity;

    invoke-interface {p1, v0}, Lub0$a;->e(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
