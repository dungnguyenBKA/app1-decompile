.class public final Linshot/collage/adconfig/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqb0;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lgg0;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "BannerAd"

    const-string v0, "onAdLoad"

    .line 1
    invoke-static {p1, v0}, Linshot/collage/adconfig/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    const-string p2, "onAdLoad but view = null !!!"

    .line 2
    invoke-static {p1, p2}, Linshot/collage/adconfig/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    sget-object p1, Linshot/collage/adconfig/f;->k:Linshot/collage/adconfig/f;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Linshot/collage/adconfig/f;->h(Linshot/collage/adconfig/f;Z)V

    .line 4
    invoke-static {p1, p2}, Linshot/collage/adconfig/f;->f(Linshot/collage/adconfig/f;Landroid/view/View;)V

    .line 5
    invoke-static {p1, p2, v0}, Linshot/collage/adconfig/f;->i(Linshot/collage/adconfig/f;Landroid/view/View;Z)V

    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lgg0;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "BannerAd"

    const-string v0, "onAdClick"

    .line 1
    invoke-static {p1, v0}, Linshot/collage/adconfig/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Landroid/content/Context;Lkb0;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lgg0;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "message"

    invoke-static {p2, p1}, Lgg0;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAdLoadFailed : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BannerAd"

    invoke-static {p2, p1}, Linshot/collage/adconfig/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object p1, Linshot/collage/adconfig/f;->k:Linshot/collage/adconfig/f;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Linshot/collage/adconfig/f;->h(Linshot/collage/adconfig/f;Z)V

    .line 3
    invoke-static {p1}, Linshot/collage/adconfig/f;->d(Linshot/collage/adconfig/f;)Linshot/collage/adconfig/f$a;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 4
    invoke-static {p1}, Linshot/collage/adconfig/f;->d(Linshot/collage/adconfig/f;)Linshot/collage/adconfig/f$a;

    move-result-object v0

    invoke-static {p1}, Linshot/collage/adconfig/f;->c(Linshot/collage/adconfig/f;)J

    move-result-wide v1

    invoke-virtual {v0, p2, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
