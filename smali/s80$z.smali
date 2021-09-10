.class Ls80$z;
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
        "Ljava/lang/Boolean;",
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

    .line 2
    sget-object v1, Lb90;->j:Lb90;

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, La90;->t0()V

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, Lb90;->g:Lb90;

    if-ne v0, v1, :cond_1

    .line 5
    invoke-virtual {p1}, La90;->v0()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, La90;->n0()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public c(Lc90;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Boolean;

    .line 2
    invoke-virtual {p1, p2}, Lc90;->x0(Ljava/lang/Boolean;)Lc90;

    return-void
.end method
