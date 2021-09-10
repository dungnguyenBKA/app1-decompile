.class public Lhf;
.super Lel;
.source "SourceFile"

# interfaces
.implements Lif;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lel<",
        "Lcom/bumptech/glide/load/g;",
        "Lhe<",
        "*>;>;",
        "Lif;"
    }
.end annotation


# instance fields
.field private d:Lif$a;


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lel;-><init>(J)V

    return-void
.end method


# virtual methods
.method protected d(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lhe;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p1}, Lhe;->c()I

    move-result p1

    :goto_0
    return p1
.end method

.method protected e(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/bumptech/glide/load/g;

    check-cast p2, Lhe;

    .line 2
    iget-object p1, p0, Lhf;->d:Lif$a;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 3
    check-cast p1, Lwd;

    invoke-virtual {p1, p2}, Lwd;->g(Lhe;)V

    :cond_0
    return-void
.end method

.method public i(Lif$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lhf;->d:Lif$a;

    return-void
.end method

.method public j(I)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const/16 v0, 0x28

    if-lt p1, v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lel;->a()V

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    if-ge p1, v0, :cond_1

    const/16 v0, 0xf

    if-ne p1, v0, :cond_2

    .line 2
    :cond_1
    invoke-virtual {p0}, Lel;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lel;->h(J)V

    :cond_2
    :goto_0
    return-void
.end method
