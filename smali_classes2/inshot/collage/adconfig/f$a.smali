.class public final Linshot/collage/adconfig/f$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linshot/collage/adconfig/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    const-string v0, "msg"

    invoke-static {p1, v0}, Lgg0;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget p1, p1, Landroid/os/Message;->what:I

    if-nez p1, :cond_1

    .line 3
    sget-object p1, Linshot/collage/adconfig/f;->k:Linshot/collage/adconfig/f;

    invoke-static {p1}, Linshot/collage/adconfig/f;->a(Linshot/collage/adconfig/f;)Lmb0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Linshot/collage/adconfig/a;->d()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmb0;->j(Landroid/app/Activity;)V

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Linshot/collage/adconfig/f;->g(Linshot/collage/adconfig/f;Lmb0;)V

    .line 5
    invoke-static {p1}, Linshot/collage/adconfig/f;->b(Linshot/collage/adconfig/f;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {p1, v0}, Linshot/collage/adconfig/f;->e(Linshot/collage/adconfig/f;Landroid/view/ViewGroup;)V

    :cond_1
    return-void
.end method
