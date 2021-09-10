.class public final Linshot/collage/adconfig/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrb0;


# instance fields
.field final synthetic a:Linshot/collage/adconfig/j;

.field final synthetic b:Z


# direct methods
.method constructor <init>(Linshot/collage/adconfig/j;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Linshot/collage/adconfig/m;->a:Linshot/collage/adconfig/j;

    iput-boolean p2, p0, Linshot/collage/adconfig/m;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lgg0;->e(Ljava/lang/Object;Ljava/lang/String;)V

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

    const-string v0, "onAdLoadFailed: type = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Linshot/collage/adconfig/m;->a:Linshot/collage/adconfig/j;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", error = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FullAd"

    invoke-static {p2, p1}, Linshot/collage/adconfig/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object p1, Linshot/collage/adconfig/l;->f:Linshot/collage/adconfig/l;

    sget-object p2, Linshot/collage/adconfig/l;->f:Linshot/collage/adconfig/l;

    .line 3
    invoke-static {p1}, Linshot/collage/adconfig/l;->a(Linshot/collage/adconfig/l;)Ljava/util/HashMap;

    move-result-object p2

    iget-object v0, p0, Linshot/collage/adconfig/m;->a:Linshot/collage/adconfig/j;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Linshot/collage/adconfig/l;->c(Linshot/collage/adconfig/l;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 5
    invoke-static {p1}, Linshot/collage/adconfig/l;->b(Linshot/collage/adconfig/l;)Linshot/collage/adconfig/l$a;

    move-result-object p2

    .line 6
    invoke-static {p1}, Linshot/collage/adconfig/l;->b(Linshot/collage/adconfig/l;)Linshot/collage/adconfig/l$a;

    move-result-object v0

    iget-object v1, p0, Linshot/collage/adconfig/m;->a:Linshot/collage/adconfig/j;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-boolean v1, p0, Linshot/collage/adconfig/m;->b:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7
    invoke-static {p1}, Linshot/collage/adconfig/l;->d(Linshot/collage/adconfig/l;)I

    move-result p1

    int-to-long v1, p1

    .line 8
    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public d(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lgg0;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAdLoad: type = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Linshot/collage/adconfig/m;->a:Linshot/collage/adconfig/j;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FullAd"

    invoke-static {v0, p1}, Linshot/collage/adconfig/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object p1, Linshot/collage/adconfig/l;->f:Linshot/collage/adconfig/l;

    sget-object v0, Linshot/collage/adconfig/l;->f:Linshot/collage/adconfig/l;

    .line 3
    invoke-static {p1}, Linshot/collage/adconfig/l;->b(Linshot/collage/adconfig/l;)Linshot/collage/adconfig/l$a;

    move-result-object p1

    iget-object v0, p0, Linshot/collage/adconfig/m;->a:Linshot/collage/adconfig/j;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public e(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lgg0;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAdClosed: type = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Linshot/collage/adconfig/m;->a:Linshot/collage/adconfig/j;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FullAd"

    invoke-static {v0, p1}, Linshot/collage/adconfig/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object p1, Linshot/collage/adconfig/l;->f:Linshot/collage/adconfig/l;

    sget-object p1, Linshot/collage/adconfig/l;->f:Linshot/collage/adconfig/l;

    return-void
.end method
