.class public final Linshot/collage/adconfig/l$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linshot/collage/adconfig/l;
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
    .locals 3

    const-string v0, "msg"

    invoke-static {p1, v0}, Lgg0;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Linshot/collage/adconfig/a;->d()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Linshot/collage/adconfig/l;->f:Linshot/collage/adconfig/l;

    invoke-static {}, Linshot/collage/adconfig/j;->values()[Linshot/collage/adconfig/j;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    aget-object v1, v1, v2

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v2, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, v1, p1}, Linshot/collage/adconfig/l;->f(Linshot/collage/adconfig/j;Z)V

    :cond_0
    return-void
.end method
