.class final Ln10$m;
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
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lg40<",
        "Li20$d$d$a$b$d;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Ln10$m;

.field private static final b:Lf40;

.field private static final c:Lf40;

.field private static final d:Lf40;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ln10$m;

    invoke-direct {v0}, Ln10$m;-><init>()V

    sput-object v0, Ln10$m;->a:Ln10$m;

    const-string v0, "name"

    .line 2
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Ln10$m;->b:Lf40;

    const-string v0, "code"

    .line 3
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Ln10$m;->c:Lf40;

    const-string v0, "address"

    .line 4
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Ln10$m;->d:Lf40;

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
    check-cast p1, Li20$d$d$a$b$d;

    check-cast p2, Lh40;

    .line 2
    sget-object v0, Ln10$m;->b:Lf40;

    invoke-virtual {p1}, Li20$d$d$a$b$d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lh40;->f(Lf40;Ljava/lang/Object;)Lh40;

    .line 3
    sget-object v0, Ln10$m;->c:Lf40;

    invoke-virtual {p1}, Li20$d$d$a$b$d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lh40;->f(Lf40;Ljava/lang/Object;)Lh40;

    .line 4
    sget-object v0, Ln10$m;->d:Lf40;

    invoke-virtual {p1}, Li20$d$d$a$b$d;->b()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lh40;->b(Lf40;J)Lh40;

    return-void
.end method
