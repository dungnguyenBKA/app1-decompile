.class public abstract Li50;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li50$a;
    }
.end annotation


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lf50$b;

    invoke-direct {v0}, Lf50$b;-><init>()V

    const-wide/16 v1, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Lf50$b;->h(J)Li50$a;

    sget-object v3, Lh50$a;->b:Lh50$a;

    .line 3
    invoke-virtual {v0, v3}, Lf50$b;->g(Lh50$a;)Li50$a;

    .line 4
    invoke-virtual {v0, v1, v2}, Lf50$b;->c(J)Li50$a;

    .line 5
    invoke-virtual {v0}, Lf50$b;->a()Li50;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract b()J
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public abstract f()Lh50$a;
.end method

.method public abstract g()J
.end method

.method public h()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Li50;->f()Lh50$a;

    move-result-object v0

    sget-object v1, Lh50$a;->f:Lh50$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Li50;->f()Lh50$a;

    move-result-object v0

    sget-object v1, Lh50$a;->c:Lh50$a;

    if-eq v0, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Li50;->f()Lh50$a;

    move-result-object v0

    sget-object v1, Lh50$a;->b:Lh50$a;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public j()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Li50;->f()Lh50$a;

    move-result-object v0

    sget-object v1, Lh50$a;->e:Lh50$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract k()Li50$a;
.end method
