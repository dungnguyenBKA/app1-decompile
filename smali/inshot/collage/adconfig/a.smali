.class public final Linshot/collage/adconfig/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation


# static fields
.field public static a:Landroid/content/Context;

.field public static b:Lfd0;

.field public static c:Linshot/collage/adconfig/b;

.field public static d:Lid0;

.field private static e:Landroid/app/Activity;

.field private static f:Z


# direct methods
.method public static final a()Lid0;
    .locals 1

    .line 1
    sget-object v0, Linshot/collage/adconfig/a;->d:Lid0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "app"

    invoke-static {v0}, Lgg0;->j(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public static final b()Z
    .locals 1

    .line 1
    sget-object v0, Linshot/collage/adconfig/a;->c:Linshot/collage/adconfig/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Linshot/collage/adconfig/b;->c()Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "callback"

    invoke-static {v0}, Lgg0;->j(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public static final c()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Linshot/collage/adconfig/a;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "context"

    invoke-static {v0}, Lgg0;->j(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public static final d()Landroid/app/Activity;
    .locals 1

    .line 1
    sget-object v0, Linshot/collage/adconfig/a;->e:Landroid/app/Activity;

    return-object v0
.end method

.method public static final e(Landroid/content/Context;Lfd0;Linshot/collage/adconfig/b;Z)V
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lgg0;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adApp"

    invoke-static {p1, v0}, Lgg0;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lgg0;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sput-object p0, Linshot/collage/adconfig/a;->a:Landroid/content/Context;

    .line 2
    sput-object p1, Linshot/collage/adconfig/a;->b:Lfd0;

    .line 3
    sput-object p2, Linshot/collage/adconfig/a;->c:Linshot/collage/adconfig/b;

    .line 4
    sput-boolean p3, Linshot/collage/adconfig/a;->f:Z

    xor-int/lit8 p2, p3, 0x1

    .line 5
    invoke-static {p2}, Linshot/collage/adconfig/o;->b(Z)V

    .line 6
    invoke-static {p3}, Linshot/collage/adconfig/o;->c(Z)V

    .line 7
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    .line 8
    new-instance p0, Lyf0;

    invoke-direct {p0}, Lyf0;-><init>()V

    throw p0

    :pswitch_0
    new-instance p1, Ljd0;

    invoke-direct {p1}, Ljd0;-><init>()V

    goto :goto_0

    .line 9
    :pswitch_1
    new-instance p1, Lhd0;

    invoke-direct {p1}, Lhd0;-><init>()V

    goto :goto_0

    .line 10
    :pswitch_2
    new-instance p1, Lpd0;

    invoke-direct {p1}, Lpd0;-><init>()V

    goto :goto_0

    .line 11
    :pswitch_3
    new-instance p1, Lld0;

    invoke-direct {p1}, Lld0;-><init>()V

    goto :goto_0

    .line 12
    :pswitch_4
    new-instance p1, Lnd0;

    invoke-direct {p1}, Lnd0;-><init>()V

    goto :goto_0

    .line 13
    :pswitch_5
    new-instance p1, Lod0;

    invoke-direct {p1}, Lod0;-><init>()V

    goto :goto_0

    .line 14
    :pswitch_6
    new-instance p1, Lmd0;

    invoke-direct {p1}, Lmd0;-><init>()V

    goto :goto_0

    .line 15
    :pswitch_7
    new-instance p1, Lkd0;

    invoke-direct {p1}, Lkd0;-><init>()V

    goto :goto_0

    .line 16
    :pswitch_8
    new-instance p1, Lqd0;

    invoke-direct {p1}, Lqd0;-><init>()V

    .line 17
    :goto_0
    sput-object p1, Linshot/collage/adconfig/a;->d:Lid0;

    .line 18
    sget-object p1, Linshot/collage/adconfig/j;->c:Linshot/collage/adconfig/j;

    const-wide/16 p2, 0x0

    invoke-static {p0, p1, p2, p3}, Linshot/collage/adconfig/d;->h(Landroid/content/Context;Linshot/collage/adconfig/j;J)V

    .line 19
    sget-object p1, Linshot/collage/adconfig/j;->b:Linshot/collage/adconfig/j;

    invoke-static {p0, p1, p2, p3}, Linshot/collage/adconfig/d;->h(Landroid/content/Context;Linshot/collage/adconfig/j;J)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final f()Z
    .locals 1

    .line 1
    sget-boolean v0, Linshot/collage/adconfig/a;->f:Z

    return v0
.end method

.method public static final g(Landroid/app/Activity;)V
    .locals 0

    .line 1
    sput-object p0, Linshot/collage/adconfig/a;->e:Landroid/app/Activity;

    return-void
.end method
