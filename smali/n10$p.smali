.class final Ln10$p;
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
    name = "p"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lg40<",
        "Li20$d$d$c;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Ln10$p;

.field private static final b:Lf40;

.field private static final c:Lf40;

.field private static final d:Lf40;

.field private static final e:Lf40;

.field private static final f:Lf40;

.field private static final g:Lf40;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ln10$p;

    invoke-direct {v0}, Ln10$p;-><init>()V

    sput-object v0, Ln10$p;->a:Ln10$p;

    const-string v0, "batteryLevel"

    .line 2
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Ln10$p;->b:Lf40;

    const-string v0, "batteryVelocity"

    .line 3
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Ln10$p;->c:Lf40;

    const-string v0, "proximityOn"

    .line 4
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Ln10$p;->d:Lf40;

    const-string v0, "orientation"

    .line 5
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Ln10$p;->e:Lf40;

    const-string v0, "ramUsed"

    .line 6
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Ln10$p;->f:Lf40;

    const-string v0, "diskUsed"

    .line 7
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Ln10$p;->g:Lf40;

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
    check-cast p1, Li20$d$d$c;

    check-cast p2, Lh40;

    .line 2
    sget-object v0, Ln10$p;->b:Lf40;

    invoke-virtual {p1}, Li20$d$d$c;->b()Ljava/lang/Double;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lh40;->f(Lf40;Ljava/lang/Object;)Lh40;

    .line 3
    sget-object v0, Ln10$p;->c:Lf40;

    invoke-virtual {p1}, Li20$d$d$c;->c()I

    move-result v1

    invoke-interface {p2, v0, v1}, Lh40;->c(Lf40;I)Lh40;

    .line 4
    sget-object v0, Ln10$p;->d:Lf40;

    invoke-virtual {p1}, Li20$d$d$c;->g()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Lh40;->a(Lf40;Z)Lh40;

    .line 5
    sget-object v0, Ln10$p;->e:Lf40;

    invoke-virtual {p1}, Li20$d$d$c;->e()I

    move-result v1

    invoke-interface {p2, v0, v1}, Lh40;->c(Lf40;I)Lh40;

    .line 6
    sget-object v0, Ln10$p;->f:Lf40;

    invoke-virtual {p1}, Li20$d$d$c;->f()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lh40;->b(Lf40;J)Lh40;

    .line 7
    sget-object v0, Ln10$p;->g:Lf40;

    invoke-virtual {p1}, Li20$d$d$c;->d()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lh40;->b(Lf40;J)Lh40;

    return-void
.end method
