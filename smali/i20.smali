.class public abstract Li20;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li20$a;,
        Li20$d;,
        Li20$b;,
        Li20$c;
    }
.end annotation


# static fields
.field private static final a:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 1
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Li20;->a:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/nio/charset/Charset;
    .locals 1

    .line 1
    sget-object v0, Li20;->a:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public static b()Li20$a;
    .locals 1

    .line 1
    new-instance v0, Lo10$b;

    invoke-direct {v0}, Lo10$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public abstract f()Ljava/lang/String;
.end method

.method public abstract g()Li20$c;
.end method

.method public abstract h()I
.end method

.method public abstract i()Ljava/lang/String;
.end method

.method public abstract j()Li20$d;
.end method

.method protected abstract k()Li20$a;
.end method

.method public l(Lj20;)Li20;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj20<",
            "Li20$d$d;",
            ">;)",
            "Li20;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Li20;->j()Li20$d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Li20;->k()Li20$a;

    move-result-object v0

    invoke-virtual {p0}, Li20;->j()Li20$d;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Li20$d;->m()Li20$d$b;

    move-result-object v1

    invoke-virtual {v1, p1}, Li20$d$b;->f(Lj20;)Li20$d$b;

    invoke-virtual {v1}, Li20$d$b;->a()Li20$d;

    move-result-object p1

    .line 4
    invoke-virtual {v0, p1}, Li20$a;->i(Li20$d;)Li20$a;

    invoke-virtual {v0}, Li20$a;->a()Li20;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Reports without sessions cannot have events added to them."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public m(Li20$c;)Li20;
    .locals 2

    .line 1
    invoke-virtual {p0}, Li20;->k()Li20$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Li20$a;->i(Li20$d;)Li20$a;

    invoke-virtual {v0, p1}, Li20$a;->f(Li20$c;)Li20$a;

    invoke-virtual {v0}, Li20$a;->a()Li20;

    move-result-object p1

    return-object p1
.end method

.method public n(JZLjava/lang/String;)Li20;
    .locals 2

    .line 1
    invoke-virtual {p0}, Li20;->k()Li20$a;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Li20;->j()Li20$d;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p0}, Li20;->j()Li20$d;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Li20$d;->m()Li20$d$b;

    move-result-object v1

    .line 5
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Li20$d$b;->e(Ljava/lang/Long;)Li20$d$b;

    .line 6
    invoke-virtual {v1, p3}, Li20$d$b;->c(Z)Li20$d$b;

    if-eqz p4, :cond_0

    .line 7
    new-instance p1, Lh20$b;

    invoke-direct {p1}, Lh20$b;-><init>()V

    .line 8
    invoke-virtual {p1, p4}, Lh20$b;->b(Ljava/lang/String;)Li20$d$f$a;

    invoke-virtual {p1}, Lh20$b;->a()Li20$d$f;

    move-result-object p1

    invoke-virtual {v1, p1}, Li20$d$b;->m(Li20$d$f;)Li20$d$b;

    invoke-virtual {v1}, Li20$d$b;->a()Li20$d;

    .line 9
    :cond_0
    invoke-virtual {v1}, Li20$d$b;->a()Li20$d;

    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Li20$a;->i(Li20$d;)Li20$a;

    .line 11
    :cond_1
    invoke-virtual {v0}, Li20$a;->a()Li20;

    move-result-object p1

    return-object p1
.end method
