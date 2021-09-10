.class final Ln10$b;
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
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lg40<",
        "Li20;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Ln10$b;

.field private static final b:Lf40;

.field private static final c:Lf40;

.field private static final d:Lf40;

.field private static final e:Lf40;

.field private static final f:Lf40;

.field private static final g:Lf40;

.field private static final h:Lf40;

.field private static final i:Lf40;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ln10$b;

    invoke-direct {v0}, Ln10$b;-><init>()V

    sput-object v0, Ln10$b;->a:Ln10$b;

    const-string v0, "sdkVersion"

    .line 2
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Ln10$b;->b:Lf40;

    const-string v0, "gmpAppId"

    .line 3
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Ln10$b;->c:Lf40;

    const-string v0, "platform"

    .line 4
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Ln10$b;->d:Lf40;

    const-string v0, "installationUuid"

    .line 5
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Ln10$b;->e:Lf40;

    const-string v0, "buildVersion"

    .line 6
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Ln10$b;->f:Lf40;

    const-string v0, "displayVersion"

    .line 7
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Ln10$b;->g:Lf40;

    const-string v0, "session"

    .line 8
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Ln10$b;->h:Lf40;

    const-string v0, "ndkPayload"

    .line 9
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Ln10$b;->i:Lf40;

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
    check-cast p1, Li20;

    check-cast p2, Lh40;

    .line 2
    sget-object v0, Ln10$b;->b:Lf40;

    invoke-virtual {p1}, Li20;->i()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lh40;->f(Lf40;Ljava/lang/Object;)Lh40;

    .line 3
    sget-object v0, Ln10$b;->c:Lf40;

    invoke-virtual {p1}, Li20;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lh40;->f(Lf40;Ljava/lang/Object;)Lh40;

    .line 4
    sget-object v0, Ln10$b;->d:Lf40;

    invoke-virtual {p1}, Li20;->h()I

    move-result v1

    invoke-interface {p2, v0, v1}, Lh40;->c(Lf40;I)Lh40;

    .line 5
    sget-object v0, Ln10$b;->e:Lf40;

    invoke-virtual {p1}, Li20;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lh40;->f(Lf40;Ljava/lang/Object;)Lh40;

    .line 6
    sget-object v0, Ln10$b;->f:Lf40;

    invoke-virtual {p1}, Li20;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lh40;->f(Lf40;Ljava/lang/Object;)Lh40;

    .line 7
    sget-object v0, Ln10$b;->g:Lf40;

    invoke-virtual {p1}, Li20;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lh40;->f(Lf40;Ljava/lang/Object;)Lh40;

    .line 8
    sget-object v0, Ln10$b;->h:Lf40;

    invoke-virtual {p1}, Li20;->j()Li20$d;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lh40;->f(Lf40;Ljava/lang/Object;)Lh40;

    .line 9
    sget-object v0, Ln10$b;->i:Lf40;

    invoke-virtual {p1}, Li20;->g()Li20$c;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lh40;->f(Lf40;Ljava/lang/Object;)Lh40;

    return-void
.end method
