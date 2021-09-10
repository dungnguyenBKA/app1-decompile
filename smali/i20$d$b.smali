.class public abstract Li20$d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li20$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Li20$d;
.end method

.method public abstract b(Li20$d$a;)Li20$d$b;
.end method

.method public abstract c(Z)Li20$d$b;
.end method

.method public abstract d(Li20$d$c;)Li20$d$b;
.end method

.method public abstract e(Ljava/lang/Long;)Li20$d$b;
.end method

.method public abstract f(Lj20;)Li20$d$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj20<",
            "Li20$d$d;",
            ">;)",
            "Li20$d$b;"
        }
    .end annotation
.end method

.method public abstract g(Ljava/lang/String;)Li20$d$b;
.end method

.method public abstract h(I)Li20$d$b;
.end method

.method public abstract i(Ljava/lang/String;)Li20$d$b;
.end method

.method public j([B)Li20$d$b;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Li20;->a()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p0, v0}, Li20$d$b;->i(Ljava/lang/String;)Li20$d$b;

    return-object p0
.end method

.method public abstract k(Li20$d$e;)Li20$d$b;
.end method

.method public abstract l(J)Li20$d$b;
.end method

.method public abstract m(Li20$d$f;)Li20$d$b;
.end method
