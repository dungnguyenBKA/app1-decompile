.class final Ln10$s;
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
    name = "s"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lg40<",
        "Li20$d$e;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Ln10$s;

.field private static final b:Lf40;

.field private static final c:Lf40;

.field private static final d:Lf40;

.field private static final e:Lf40;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ln10$s;

    invoke-direct {v0}, Ln10$s;-><init>()V

    sput-object v0, Ln10$s;->a:Ln10$s;

    const-string v0, "platform"

    .line 2
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Ln10$s;->b:Lf40;

    const-string v0, "version"

    .line 3
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Ln10$s;->c:Lf40;

    const-string v0, "buildVersion"

    .line 4
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Ln10$s;->d:Lf40;

    const-string v0, "jailbroken"

    .line 5
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Ln10$s;->e:Lf40;

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
    check-cast p1, Li20$d$e;

    check-cast p2, Lh40;

    .line 2
    sget-object v0, Ln10$s;->b:Lf40;

    invoke-virtual {p1}, Li20$d$e;->c()I

    move-result v1

    invoke-interface {p2, v0, v1}, Lh40;->c(Lf40;I)Lh40;

    .line 3
    sget-object v0, Ln10$s;->c:Lf40;

    invoke-virtual {p1}, Li20$d$e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lh40;->f(Lf40;Ljava/lang/Object;)Lh40;

    .line 4
    sget-object v0, Ln10$s;->d:Lf40;

    invoke-virtual {p1}, Li20$d$e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lh40;->f(Lf40;Ljava/lang/Object;)Lh40;

    .line 5
    sget-object v0, Ln10$s;->e:Lf40;

    invoke-virtual {p1}, Li20$d$e;->e()Z

    move-result p1

    invoke-interface {p2, v0, p1}, Lh40;->a(Lf40;Z)Lh40;

    return-void
.end method
