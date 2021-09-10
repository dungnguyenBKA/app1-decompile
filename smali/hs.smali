.class final Lhs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg40;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lg40<",
        "Lts;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lhs;

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
    new-instance v0, Lhs;

    invoke-direct {v0}, Lhs;-><init>()V

    sput-object v0, Lhs;->a:Lhs;

    const-string v0, "eventTimeMs"

    .line 2
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Lhs;->b:Lf40;

    const-string v0, "eventCode"

    .line 3
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Lhs;->c:Lf40;

    const-string v0, "eventUptimeMs"

    .line 4
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Lhs;->d:Lf40;

    const-string v0, "sourceExtension"

    .line 5
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Lhs;->e:Lf40;

    const-string v0, "sourceExtensionJsonProto3"

    .line 6
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Lhs;->f:Lf40;

    const-string v0, "timezoneOffsetSeconds"

    .line 7
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Lhs;->g:Lf40;

    const-string v0, "networkConnectionInfo"

    .line 8
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Lhs;->h:Lf40;

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
    check-cast p1, Lts;

    check-cast p2, Lh40;

    .line 2
    sget-object v0, Lhs;->b:Lf40;

    invoke-virtual {p1}, Lts;->b()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lh40;->b(Lf40;J)Lh40;

    .line 3
    sget-object v0, Lhs;->c:Lf40;

    invoke-virtual {p1}, Lts;->a()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lh40;->f(Lf40;Ljava/lang/Object;)Lh40;

    .line 4
    sget-object v0, Lhs;->d:Lf40;

    invoke-virtual {p1}, Lts;->c()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lh40;->b(Lf40;J)Lh40;

    .line 5
    sget-object v0, Lhs;->e:Lf40;

    invoke-virtual {p1}, Lts;->e()[B

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lh40;->f(Lf40;Ljava/lang/Object;)Lh40;

    .line 6
    sget-object v0, Lhs;->f:Lf40;

    invoke-virtual {p1}, Lts;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lh40;->f(Lf40;Ljava/lang/Object;)Lh40;

    .line 7
    sget-object v0, Lhs;->g:Lf40;

    invoke-virtual {p1}, Lts;->g()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lh40;->b(Lf40;J)Lh40;

    .line 8
    sget-object v0, Lhs;->h:Lf40;

    invoke-virtual {p1}, Lts;->d()Lws;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lh40;->f(Lf40;Ljava/lang/Object;)Lh40;

    return-void
.end method
