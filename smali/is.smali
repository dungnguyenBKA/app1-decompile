.class final Lis;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg40;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lg40<",
        "Lus;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lis;

.field private static final b:Lf40;

.field private static final c:Lf40;

.field private static final d:Lf40;

.field private static final e:Lf40;

.field private static final f:Lf40;

.field private static final g:Lf40;

.field private static final h:Lf40;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lis;

    invoke-direct {v0}, Lis;-><init>()V

    sput-object v0, Lis;->a:Lis;

    const-string v0, "requestTimeMs"

    .line 2
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Lis;->b:Lf40;

    const-string v0, "requestUptimeMs"

    .line 3
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Lis;->c:Lf40;

    const-string v0, "clientInfo"

    .line 4
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Lis;->d:Lf40;

    const-string v0, "logSource"

    .line 5
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Lis;->e:Lf40;

    const-string v0, "logSourceName"

    .line 6
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Lis;->f:Lf40;

    const-string v0, "logEvent"

    .line 7
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Lis;->g:Lf40;

    const-string v0, "qosTier"

    .line 8
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Lis;->h:Lf40;

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
    check-cast p1, Lus;

    check-cast p2, Lh40;

    .line 2
    sget-object v0, Lis;->b:Lf40;

    invoke-virtual {p1}, Lus;->g()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lh40;->b(Lf40;J)Lh40;

    .line 3
    sget-object v0, Lis;->c:Lf40;

    invoke-virtual {p1}, Lus;->h()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lh40;->b(Lf40;J)Lh40;

    .line 4
    sget-object v0, Lis;->d:Lf40;

    invoke-virtual {p1}, Lus;->b()Lss;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lh40;->f(Lf40;Ljava/lang/Object;)Lh40;

    .line 5
    sget-object v0, Lis;->e:Lf40;

    invoke-virtual {p1}, Lus;->d()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lh40;->f(Lf40;Ljava/lang/Object;)Lh40;

    .line 6
    sget-object v0, Lis;->f:Lf40;

    invoke-virtual {p1}, Lus;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lh40;->f(Lf40;Ljava/lang/Object;)Lh40;

    .line 7
    sget-object v0, Lis;->g:Lf40;

    invoke-virtual {p1}, Lus;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lh40;->f(Lf40;Ljava/lang/Object;)Lh40;

    .line 8
    sget-object v0, Lis;->h:Lf40;

    invoke-virtual {p1}, Lus;->f()Lxs;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lh40;->f(Lf40;Ljava/lang/Object;)Lh40;

    return-void
.end method
