.class Ls80$i;
.super Lz60;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls80;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lz60<",
        "Ljava/math/BigInteger;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lz60;-><init>()V

    return-void
.end method


# virtual methods
.method public b(La90;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p1}, La90;->x0()Lb90;

    move-result-object v0

    sget-object v1, Lb90;->j:Lb90;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, La90;->t0()V

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    :try_start_0
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p1}, La90;->v0()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Lx60;

    invoke-direct {v0, p1}, Lx60;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public c(Lc90;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/math/BigInteger;

    .line 2
    invoke-virtual {p1, p2}, Lc90;->y0(Ljava/lang/Number;)Lc90;

    return-void
.end method
