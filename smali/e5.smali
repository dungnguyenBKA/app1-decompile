.class public Le5;
.super Lg5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg5<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lm6;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ls5;->c(Landroid/content/Context;Lm6;)Ls5;

    move-result-object p1

    invoke-virtual {p1}, Ls5;->a()Lm5;

    move-result-object p1

    invoke-direct {p0, p1}, Lg5;-><init>(Lp5;)V

    return-void
.end method


# virtual methods
.method b(Lc6;)Z
    .locals 0

    .line 1
    iget-object p1, p1, Lc6;->j:Landroidx/work/c;

    invoke-virtual {p1}, Landroidx/work/c;->g()Z

    move-result p1

    return p1
.end method

.method c(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
