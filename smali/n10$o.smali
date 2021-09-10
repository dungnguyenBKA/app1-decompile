.class final Ln10$o;
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
    name = "o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lg40<",
        "Li20$d$d$a$b$e$b;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Ln10$o;

.field private static final b:Lf40;

.field private static final c:Lf40;

.field private static final d:Lf40;

.field private static final e:Lf40;

.field private static final f:Lf40;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ln10$o;

    invoke-direct {v0}, Ln10$o;-><init>()V

    sput-object v0, Ln10$o;->a:Ln10$o;

    const-string v0, "pc"

    .line 2
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Ln10$o;->b:Lf40;

    const-string v0, "symbol"

    .line 3
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Ln10$o;->c:Lf40;

    const-string v0, "file"

    .line 4
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Ln10$o;->d:Lf40;

    const-string v0, "offset"

    .line 5
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Ln10$o;->e:Lf40;

    const-string v0, "importance"

    .line 6
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Ln10$o;->f:Lf40;

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
    check-cast p1, Li20$d$d$a$b$e$b;

    check-cast p2, Lh40;

    .line 2
    sget-object v0, Ln10$o;->b:Lf40;

    invoke-virtual {p1}, Li20$d$d$a$b$e$b;->e()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lh40;->b(Lf40;J)Lh40;

    .line 3
    sget-object v0, Ln10$o;->c:Lf40;

    invoke-virtual {p1}, Li20$d$d$a$b$e$b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lh40;->f(Lf40;Ljava/lang/Object;)Lh40;

    .line 4
    sget-object v0, Ln10$o;->d:Lf40;

    invoke-virtual {p1}, Li20$d$d$a$b$e$b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lh40;->f(Lf40;Ljava/lang/Object;)Lh40;

    .line 5
    sget-object v0, Ln10$o;->e:Lf40;

    invoke-virtual {p1}, Li20$d$d$a$b$e$b;->d()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lh40;->b(Lf40;J)Lh40;

    .line 6
    sget-object v0, Ln10$o;->f:Lf40;

    invoke-virtual {p1}, Li20$d$d$a$b$e$b;->c()I

    move-result p1

    invoke-interface {p2, v0, p1}, Lh40;->c(Lf40;I)Lh40;

    return-void
.end method
