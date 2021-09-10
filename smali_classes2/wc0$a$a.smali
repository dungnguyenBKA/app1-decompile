.class Lwc0$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vungle/warren/LoadAdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwc0$a;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lwc0$a;


# direct methods
.method constructor <init>(Lwc0$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwc0$a$a;->a:Lwc0$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLoad(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object p1

    iget-object v0, p0, Lwc0$a$a;->a:Lwc0$a;

    iget-object v0, v0, Lwc0$a;->a:Landroid/app/Activity;

    const-string v1, "VungleBanner:onAdLoad"

    invoke-virtual {p1, v0, v1}, Lfc0;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lwc0$a$a;->a:Lwc0$a;

    iget-object p1, p1, Lwc0$a;->c:Lwc0;

    iget-object v0, p1, Lwc0;->b:Ljb0;

    invoke-virtual {v0}, Ljb0;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lwc0$a$a;->a:Lwc0$a;

    iget-object v1, v1, Lwc0$a;->b:Lub0$a;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v2, Lcom/vungle/warren/AdConfig$AdSize;->BANNER:Lcom/vungle/warren/AdConfig$AdSize;

    invoke-static {v0, v2}, Lcom/vungle/warren/Banners;->canPlayAd(Ljava/lang/String;Lcom/vungle/warren/AdConfig$AdSize;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    new-instance v3, Lxc0;

    invoke-direct {v3, p1, v1}, Lxc0;-><init>(Lwc0;Lub0$a;)V

    invoke-static {v0, v2, v3}, Lcom/vungle/warren/Banners;->getBanner(Ljava/lang/String;Lcom/vungle/warren/AdConfig$AdSize;Lcom/vungle/warren/PlayAdCallback;)Lcom/vungle/warren/VungleBanner;

    move-result-object v0

    iput-object v0, p1, Lwc0;->e:Lcom/vungle/warren/VungleBanner;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 6
    iget-object p1, p0, Lwc0$a$a;->a:Lwc0$a;

    iget-object v1, p1, Lwc0$a;->b:Lub0$a;

    if-eqz v1, :cond_2

    .line 7
    iget-object p1, p1, Lwc0$a;->a:Landroid/app/Activity;

    invoke-interface {v1, p1, v0}, Lub0$a;->a(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_1

    .line 8
    :cond_1
    iget-object p1, p0, Lwc0$a$a;->a:Lwc0$a;

    iget-object v0, p1, Lwc0$a;->b:Lub0$a;

    if-eqz v0, :cond_2

    .line 9
    iget-object p1, p1, Lwc0$a;->a:Landroid/app/Activity;

    const-string v1, "VungleBanner:onAdFailedToLoad, VungleBanner == null"

    invoke-static {v1, v0, p1}, Lic;->t(Ljava/lang/String;Lub0$a;Landroid/app/Activity;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onError(Ljava/lang/String;Lcom/vungle/warren/error/VungleException;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lwc0$a$a;->a:Lwc0$a;

    iget-object v0, p1, Lwc0$a;->b:Lub0$a;

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p1, Lwc0$a;->a:Landroid/app/Activity;

    new-instance v1, Lkb0;

    const-string v2, "VungleBanner:onAdFailedToLoad, error code : "

    invoke-static {v2}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/vungle/warren/error/VungleException;->getExceptionCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lkb0;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Lub0$a;->d(Landroid/app/Activity;Lkb0;)V

    .line 3
    :cond_0
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object p1

    iget-object v0, p0, Lwc0$a$a;->a:Lwc0$a;

    iget-object v0, v0, Lwc0$a;->a:Landroid/app/Activity;

    const-string v1, "VungleBanner:onError "

    invoke-static {v1}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/vungle/warren/error/VungleException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lfc0;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
