.class public abstract Lts;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lts$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static h(Ljava/lang/String;)Lts$a;
    .locals 1

    .line 1
    new-instance v0, Lns$b;

    invoke-direct {v0}, Lns$b;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lns$b;->h(Ljava/lang/String;)Lts$a;

    return-object v0
.end method

.method public static i([B)Lts$a;
    .locals 1

    .line 1
    new-instance v0, Lns$b;

    invoke-direct {v0}, Lns$b;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lns$b;->g([B)Lts$a;

    return-object v0
.end method


# virtual methods
.method public abstract a()Ljava/lang/Integer;
.end method

.method public abstract b()J
.end method

.method public abstract c()J
.end method

.method public abstract d()Lws;
.end method

.method public abstract e()[B
.end method

.method public abstract f()Ljava/lang/String;
.end method

.method public abstract g()J
.end method
