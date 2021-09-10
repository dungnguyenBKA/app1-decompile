.class Le60;
.super Lz60;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lz60<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lj60;)V
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
    invoke-virtual {p1}, La90;->o0()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public c(Lc90;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p2, Ljava/lang/Number;

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p1}, Lc90;->n0()Lc90;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 4
    invoke-static {v0, v1}, Lj60;->a(D)V

    .line 5
    invoke-virtual {p1, p2}, Lc90;->y0(Ljava/lang/Number;)Lc90;

    :goto_0
    return-void
.end method
