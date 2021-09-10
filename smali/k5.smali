.class public Lk5;
.super Lg5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg5<",
        "Lb5;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lm6;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ls5;->c(Landroid/content/Context;Lm6;)Ls5;

    move-result-object p1

    invoke-virtual {p1}, Ls5;->d()Lq5;

    move-result-object p1

    invoke-direct {p0, p1}, Lg5;-><init>(Lp5;)V

    return-void
.end method


# virtual methods
.method b(Lc6;)Z
    .locals 1

    .line 1
    iget-object p1, p1, Lc6;->j:Landroidx/work/c;

    invoke-virtual {p1}, Landroidx/work/c;->b()Landroidx/work/i;

    move-result-object p1

    sget-object v0, Landroidx/work/i;->d:Landroidx/work/i;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method c(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    check-cast p1, Lb5;

    .line 2
    invoke-virtual {p1}, Lb5;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lb5;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
