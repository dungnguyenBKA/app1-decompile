.class final Ln10$g;
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
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lg40<",
        "Li20$d$c;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Ln10$g;

.field private static final b:Lf40;

.field private static final c:Lf40;

.field private static final d:Lf40;

.field private static final e:Lf40;

.field private static final f:Lf40;

.field private static final g:Lf40;

.field private static final h:Lf40;

.field private static final i:Lf40;

.field private static final j:Lf40;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ln10$g;

    invoke-direct {v0}, Ln10$g;-><init>()V

    sput-object v0, Ln10$g;->a:Ln10$g;

    const-string v0, "arch"

    .line 2
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Ln10$g;->b:Lf40;

    const-string v0, "model"

    .line 3
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Ln10$g;->c:Lf40;

    const-string v0, "cores"

    .line 4
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Ln10$g;->d:Lf40;

    const-string v0, "ram"

    .line 5
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Ln10$g;->e:Lf40;

    const-string v0, "diskSpace"

    .line 6
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Ln10$g;->f:Lf40;

    const-string v0, "simulator"

    .line 7
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Ln10$g;->g:Lf40;

    const-string v0, "state"

    .line 8
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Ln10$g;->h:Lf40;

    const-string v0, "manufacturer"

    .line 9
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Ln10$g;->i:Lf40;

    const-string v0, "modelClass"

    .line 10
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Ln10$g;->j:Lf40;

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
    check-cast p1, Li20$d$c;

    check-cast p2, Lh40;

    .line 2
    sget-object v0, Ln10$g;->b:Lf40;

    invoke-virtual {p1}, Li20$d$c;->b()I

    move-result v1

    invoke-interface {p2, v0, v1}, Lh40;->c(Lf40;I)Lh40;

    .line 3
    sget-object v0, Ln10$g;->c:Lf40;

    invoke-virtual {p1}, Li20$d$c;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lh40;->f(Lf40;Ljava/lang/Object;)Lh40;

    .line 4
    sget-object v0, Ln10$g;->d:Lf40;

    invoke-virtual {p1}, Li20$d$c;->c()I

    move-result v1

    invoke-interface {p2, v0, v1}, Lh40;->c(Lf40;I)Lh40;

    .line 5
    sget-object v0, Ln10$g;->e:Lf40;

    invoke-virtual {p1}, Li20$d$c;->h()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lh40;->b(Lf40;J)Lh40;

    .line 6
    sget-object v0, Ln10$g;->f:Lf40;

    invoke-virtual {p1}, Li20$d$c;->d()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lh40;->b(Lf40;J)Lh40;

    .line 7
    sget-object v0, Ln10$g;->g:Lf40;

    invoke-virtual {p1}, Li20$d$c;->j()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Lh40;->a(Lf40;Z)Lh40;

    .line 8
    sget-object v0, Ln10$g;->h:Lf40;

    invoke-virtual {p1}, Li20$d$c;->i()I

    move-result v1

    invoke-interface {p2, v0, v1}, Lh40;->c(Lf40;I)Lh40;

    .line 9
    sget-object v0, Ln10$g;->i:Lf40;

    invoke-virtual {p1}, Li20$d$c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lh40;->f(Lf40;Ljava/lang/Object;)Lh40;

    .line 10
    sget-object v0, Ln10$g;->j:Lf40;

    invoke-virtual {p1}, Li20$d$c;->g()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lh40;->f(Lf40;Ljava/lang/Object;)Lh40;

    return-void
.end method
