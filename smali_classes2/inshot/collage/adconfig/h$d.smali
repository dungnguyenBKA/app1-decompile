.class public final Linshot/collage/adconfig/h$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltb0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linshot/collage/adconfig/h;->h(Landroid/app/Activity;Linshot/collage/adconfig/h$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private a:Linshot/collage/adconfig/i;


# direct methods
.method constructor <init>(Linshot/collage/adconfig/h$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Linshot/collage/adconfig/h$b;->e()Linshot/collage/adconfig/i;

    move-result-object p1

    iput-object p1, p0, Linshot/collage/adconfig/h$d;->a:Linshot/collage/adconfig/i;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lgg0;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "view"

    invoke-static {p2, p1}, Lgg0;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAdLoad type = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Linshot/collage/adconfig/h$d;->a:Linshot/collage/adconfig/i;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CardAd"

    invoke-static {v0, p1}, Linshot/collage/adconfig/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object p1, Linshot/collage/adconfig/h;->g:Linshot/collage/adconfig/h;

    invoke-static {p1}, Linshot/collage/adconfig/h;->b(Linshot/collage/adconfig/h;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Linshot/collage/adconfig/h$d;->a:Linshot/collage/adconfig/i;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linshot/collage/adconfig/h$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Linshot/collage/adconfig/h$b;->k(Landroid/view/View;)V

    .line 3
    :cond_0
    invoke-static {p1}, Linshot/collage/adconfig/h;->a(Linshot/collage/adconfig/h;)Linshot/collage/adconfig/h$c;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Linshot/collage/adconfig/h$d;->a:Linshot/collage/adconfig/i;

    invoke-interface {p1, p2}, Linshot/collage/adconfig/h$c;->a(Linshot/collage/adconfig/i;)V

    :cond_1
    return-void
.end method

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

    const-string v0, "onAdLoadFailed type = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Linshot/collage/adconfig/h$d;->a:Linshot/collage/adconfig/i;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", error = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CardAd"

    invoke-static {p2, p1}, Linshot/collage/adconfig/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object p1, Linshot/collage/adconfig/h;->g:Linshot/collage/adconfig/h;

    invoke-static {p1}, Linshot/collage/adconfig/h;->b(Linshot/collage/adconfig/h;)Ljava/util/HashMap;

    move-result-object p2

    iget-object v0, p0, Linshot/collage/adconfig/h$d;->a:Linshot/collage/adconfig/i;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p1}, Linshot/collage/adconfig/h;->e(Linshot/collage/adconfig/h;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 4
    invoke-static {p1}, Linshot/collage/adconfig/h;->d(Linshot/collage/adconfig/h;)Landroid/os/Handler;

    move-result-object p2

    iget-object v0, p0, Linshot/collage/adconfig/h$d;->a:Linshot/collage/adconfig/i;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    invoke-static {p1}, Linshot/collage/adconfig/h;->d(Linshot/collage/adconfig/h;)Landroid/os/Handler;

    move-result-object p2

    iget-object v0, p0, Linshot/collage/adconfig/h$d;->a:Linshot/collage/adconfig/i;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-static {p1}, Linshot/collage/adconfig/h;->c(Linshot/collage/adconfig/h;)J

    move-result-wide v1

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method
