.class final Les;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg40;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lg40<",
        "Lds;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Les;

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

.field private static final m:Lf40;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Les;

    invoke-direct {v0}, Les;-><init>()V

    sput-object v0, Les;->a:Les;

    const-string v0, "sdkVersion"

    .line 2
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Les;->b:Lf40;

    const-string v0, "model"

    .line 3
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Les;->c:Lf40;

    const-string v0, "hardware"

    .line 4
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Les;->d:Lf40;

    const-string v0, "device"

    .line 5
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Les;->e:Lf40;

    const-string v0, "product"

    .line 6
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Les;->f:Lf40;

    const-string v0, "osBuild"

    .line 7
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Les;->g:Lf40;

    const-string v0, "manufacturer"

    .line 8
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Les;->h:Lf40;

    const-string v0, "fingerprint"

    .line 9
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Les;->i:Lf40;

    const-string v0, "locale"

    .line 10
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Les;->j:Lf40;

    const-string v0, "country"

    .line 11
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Les;->k:Lf40;

    const-string v0, "mccMnc"

    .line 12
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Les;->l:Lf40;

    const-string v0, "applicationBuild"

    .line 13
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Les;->m:Lf40;

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
    .locals 2

    .line 1
    check-cast p1, Lds;

    check-cast p2, Lh40;

    .line 2
    sget-object v0, Les;->b:Lf40;

    invoke-virtual {p1}, Lds;->m()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lh40;->f(Lf40;Ljava/lang/Object;)Lh40;

    .line 3
    sget-object v0, Les;->c:Lf40;

    invoke-virtual {p1}, Lds;->j()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lh40;->f(Lf40;Ljava/lang/Object;)Lh40;

    .line 4
    sget-object v0, Les;->d:Lf40;

    invoke-virtual {p1}, Lds;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lh40;->f(Lf40;Ljava/lang/Object;)Lh40;

    .line 5
    sget-object v0, Les;->e:Lf40;

    invoke-virtual {p1}, Lds;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lh40;->f(Lf40;Ljava/lang/Object;)Lh40;

    .line 6
    sget-object v0, Les;->f:Lf40;

    invoke-virtual {p1}, Lds;->l()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lh40;->f(Lf40;Ljava/lang/Object;)Lh40;

    .line 7
    sget-object v0, Les;->g:Lf40;

    invoke-virtual {p1}, Lds;->k()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lh40;->f(Lf40;Ljava/lang/Object;)Lh40;

    .line 8
    sget-object v0, Les;->h:Lf40;

    invoke-virtual {p1}, Lds;->h()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lh40;->f(Lf40;Ljava/lang/Object;)Lh40;

    .line 9
    sget-object v0, Les;->i:Lf40;

    invoke-virtual {p1}, Lds;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lh40;->f(Lf40;Ljava/lang/Object;)Lh40;

    .line 10
    sget-object v0, Les;->j:Lf40;

    invoke-virtual {p1}, Lds;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lh40;->f(Lf40;Ljava/lang/Object;)Lh40;

    .line 11
    sget-object v0, Les;->k:Lf40;

    invoke-virtual {p1}, Lds;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lh40;->f(Lf40;Ljava/lang/Object;)Lh40;

    .line 12
    sget-object v0, Les;->l:Lf40;

    invoke-virtual {p1}, Lds;->i()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lh40;->f(Lf40;Ljava/lang/Object;)Lh40;

    .line 13
    sget-object v0, Les;->m:Lf40;

    invoke-virtual {p1}, Lds;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lh40;->f(Lf40;Ljava/lang/Object;)Lh40;

    return-void
.end method
