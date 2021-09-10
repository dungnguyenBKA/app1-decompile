.class final Ln10$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg40;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lg40<",
        "Li20$d;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Ln10$h;

.field private static final b:Lf40;

.field private static final c:Lf40;

.field private static final d:Lf40;

.field private static final e:Lf40;

.field private static final f:Lf40;

.field private static final g:Lf40;

.field private static final h:Lf40;

.field private static final i:Lf40;

.field private static final j:Lf40;

.field private static final k:Lf40;

.field private static final l:Lf40;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ln10$h;

    invoke-direct {v0}, Ln10$h;-><init>()V

    sput-object v0, Ln10$h;->a:Ln10$h;

    const-string v0, "generator"

    .line 2
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Ln10$h;->b:Lf40;

    const-string v0, "identifier"

    .line 3
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Ln10$h;->c:Lf40;

    const-string v0, "startedAt"

    .line 4
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Ln10$h;->d:Lf40;

    const-string v0, "endedAt"

    .line 5
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Ln10$h;->e:Lf40;

    const-string v0, "crashed"

    .line 6
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Ln10$h;->f:Lf40;

    const-string v0, "app"

    .line 7
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Ln10$h;->g:Lf40;

    const-string v0, "user"

    .line 8
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Ln10$h;->h:Lf40;

    const-string v0, "os"

    .line 9
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Ln10$h;->i:Lf40;

    const-string v0, "device"

    .line 10
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Ln10$h;->j:Lf40;

    const-string v0, "events"

    .line 11
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Ln10$h;->k:Lf40;

    const-string v0, "generatorType"

    .line 12
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Ln10$h;->l:Lf40;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Li20$d;

    check-cast p2, Lh40;

    .line 2
    sget-object v0, Ln10$h;->b:Lf40;

    invoke-virtual {p1}, Li20$d;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lh40;->f(Lf40;Ljava/lang/Object;)Lh40;

    .line 3
    sget-object v0, Ln10$h;->c:Lf40;

    .line 4
    invoke-virtual {p1}, Li20$d;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Li20;->a()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 5
    invoke-interface {p2, v0, v1}, Lh40;->f(Lf40;Ljava/lang/Object;)Lh40;

    .line 6
    sget-object v0, Ln10$h;->d:Lf40;

    invoke-virtual {p1}, Li20$d;->j()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lh40;->b(Lf40;J)Lh40;

    .line 7
    sget-object v0, Ln10$h;->e:Lf40;

    invoke-virtual {p1}, Li20$d;->d()Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lh40;->f(Lf40;Ljava/lang/Object;)Lh40;

    .line 8
    sget-object v0, Ln10$h;->f:Lf40;

    invoke-virtual {p1}, Li20$d;->l()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Lh40;->a(Lf40;Z)Lh40;

    .line 9
    sget-object v0, Ln10$h;->g:Lf40;

    invoke-virtual {p1}, Li20$d;->b()Li20$d$a;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lh40;->f(Lf40;Ljava/lang/Object;)Lh40;

    .line 10
    sget-object v0, Ln10$h;->h:Lf40;

    invoke-virtual {p1}, Li20$d;->k()Li20$d$f;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lh40;->f(Lf40;Ljava/lang/Object;)Lh40;

    .line 11
    sget-object v0, Ln10$h;->i:Lf40;

    invoke-virtual {p1}, Li20$d;->i()Li20$d$e;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lh40;->f(Lf40;Ljava/lang/Object;)Lh40;

    .line 12
    sget-object v0, Ln10$h;->j:Lf40;

    invoke-virtual {p1}, Li20$d;->c()Li20$d$c;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lh40;->f(Lf40;Ljava/lang/Object;)Lh40;

    .line 13
    sget-object v0, Ln10$h;->k:Lf40;

    invoke-virtual {p1}, Li20$d;->e()Lj20;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lh40;->f(Lf40;Ljava/lang/Object;)Lh40;

    .line 14
    sget-object v0, Ln10$h;->l:Lf40;

    invoke-virtual {p1}, Li20$d;->g()I

    move-result p1

    invoke-interface {p2, v0, p1}, Lh40;->c(Lf40;I)Lh40;

    return-void
.end method
