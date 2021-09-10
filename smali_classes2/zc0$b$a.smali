.class Lzc0$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vungle/warren/LoadAdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzc0$b;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lzc0$b;


# direct methods
.method constructor <init>(Lzc0$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzc0$b$a;->a:Lzc0$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLoad(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object v0

    iget-object v1, p0, Lzc0$b$a;->a:Lzc0$b;

    iget-object v1, v1, Lzc0$b;->a:Landroid/app/Activity;

    const-string v2, "VungleInterstitial:onAdLoad"

    invoke-virtual {v0, v1, v2}, Lfc0;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/vungle/warren/Vungle;->canPlayAd(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lzc0$b$a;->a:Lzc0$b;

    iget-object v1, v0, Lzc0$b;->c:Lzc0;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lzc0;->c:Z

    .line 4
    iput-object p1, v1, Lzc0;->g:Ljava/lang/String;

    .line 5
    iget-object p1, v0, Lzc0$b;->b:Lub0$a;

    if-eqz p1, :cond_2

    .line 6
    iget-object v0, v0, Lzc0$b;->a:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lub0$a;->a(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lzc0$b$a;->a:Lzc0$b;

    iget-object v0, p1, Lzc0$b;->b:Lub0$a;

    const-string v1, "VungleInterstitial:loadAd but cant play"

    if-eqz v0, :cond_1

    .line 8
    iget-object p1, p1, Lzc0$b;->a:Landroid/app/Activity;

    invoke-static {v1, v0, p1}, Lic;->t(Ljava/lang/String;Lub0$a;Landroid/app/Activity;)V

    .line 9
    :cond_1
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object p1

    iget-object v0, p0, Lzc0$b$a;->a:Lzc0$b;

    iget-object v0, v0, Lzc0$b;->a:Landroid/app/Activity;

    invoke-virtual {p1, v0, v1}, Lfc0;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/String;Lcom/vungle/warren/error/VungleException;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lzc0$b$a;->a:Lzc0$b;

    iget-object v0, p1, Lzc0$b;->b:Lub0$a;

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p1, Lzc0$b;->a:Landroid/app/Activity;

    new-instance v1, Lkb0;

    const-string v2, "VungleInterstitial:load failed "

    invoke-static {v2}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/vungle/warren/error/VungleException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lkb0;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Lub0$a;->d(Landroid/app/Activity;Lkb0;)V

    .line 3
    :cond_0
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object p1

    iget-object v0, p0, Lzc0$b$a;->a:Lzc0$b;

    iget-object v0, v0, Lzc0$b;->a:Landroid/app/Activity;

    const-string v1, "VungleInterstitial:onError "

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
