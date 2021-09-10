.class final Ln10$j;
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
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lg40<",
        "Li20$d$d$a$b$a;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Ln10$j;

.field private static final b:Lf40;

.field private static final c:Lf40;

.field private static final d:Lf40;

.field private static final e:Lf40;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ln10$j;

    invoke-direct {v0}, Ln10$j;-><init>()V

    sput-object v0, Ln10$j;->a:Ln10$j;

    const-string v0, "baseAddress"

    .line 2
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Ln10$j;->b:Lf40;

    const-string v0, "size"

    .line 3
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Ln10$j;->c:Lf40;

    const-string v0, "name"

    .line 4
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Ln10$j;->d:Lf40;

    const-string v0, "uuid"

    .line 5
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Ln10$j;->e:Lf40;

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
    check-cast p1, Li20$d$d$a$b$a;

    check-cast p2, Lh40;

    .line 2
    sget-object v0, Ln10$j;->b:Lf40;

    invoke-virtual {p1}, Li20$d$d$a$b$a;->b()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lh40;->b(Lf40;J)Lh40;

    .line 3
    sget-object v0, Ln10$j;->c:Lf40;

    invoke-virtual {p1}, Li20$d$d$a$b$a;->d()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lh40;->b(Lf40;J)Lh40;

    .line 4
    sget-object v0, Ln10$j;->d:Lf40;

    invoke-virtual {p1}, Li20$d$d$a$b$a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lh40;->f(Lf40;Ljava/lang/Object;)Lh40;

    .line 5
    sget-object v0, Ln10$j;->e:Lf40;

    .line 6
    invoke-virtual {p1}, Li20$d$d$a$b$a;->e()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7
    invoke-static {}, Li20;->a()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    invoke-interface {p2, v0, p1}, Lh40;->f(Lf40;Ljava/lang/Object;)Lh40;

    return-void
.end method
