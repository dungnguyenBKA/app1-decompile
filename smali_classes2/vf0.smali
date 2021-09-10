.class public final Lvf0;
.super Lwf0;
.source "SourceFile"


# direct methods
.method public static a(Lxf0;Lfg0;)Luf0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lxf0;",
            "Lfg0<",
            "+TT;>;)",
            "Luf0<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "mode"

    .line 1
    invoke-static {p0, v0}, Lgg0;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initializer"

    invoke-static {p1, v0}, Lgg0;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x2

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    if-ne p0, v0, :cond_0

    .line 3
    new-instance p0, Leg0;

    invoke-direct {p0, p1}, Leg0;-><init>(Lfg0;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lyf0;

    invoke-direct {p0}, Lyf0;-><init>()V

    throw p0

    .line 4
    :cond_1
    new-instance p0, Lzf0;

    invoke-direct {p0, p1}, Lzf0;-><init>(Lfg0;)V

    goto :goto_0

    .line 5
    :cond_2
    new-instance p0, Lag0;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lag0;-><init>(Lfg0;Ljava/lang/Object;I)V

    :goto_0
    return-object p0
.end method
