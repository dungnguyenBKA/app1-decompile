.class public abstract Li20$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li20;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li20$d$d;,
        Li20$d$c;,
        Li20$d$e;,
        Li20$d$a;,
        Li20$d$f;,
        Li20$d$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Li20$d$b;
    .locals 2

    .line 1
    new-instance v0, Ls10$b;

    invoke-direct {v0}, Ls10$b;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ls10$b;->c(Z)Li20$d$b;

    return-object v0
.end method


# virtual methods
.method public abstract b()Li20$d$a;
.end method

.method public abstract c()Li20$d$c;
.end method

.method public abstract d()Ljava/lang/Long;
.end method

.method public abstract e()Lj20;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj20<",
            "Li20$d$d;",
            ">;"
        }
    .end annotation
.end method

.method public abstract f()Ljava/lang/String;
.end method

.method public abstract g()I
.end method

.method public abstract h()Ljava/lang/String;
.end method

.method public abstract i()Li20$d$e;
.end method

.method public abstract j()J
.end method

.method public abstract k()Li20$d$f;
.end method

.method public abstract l()Z
.end method

.method public abstract m()Li20$d$b;
.end method
