.class final Lgs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg40;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lg40<",
        "Lss;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lgs;

.field private static final b:Lf40;

.field private static final c:Lf40;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lgs;

    invoke-direct {v0}, Lgs;-><init>()V

    sput-object v0, Lgs;->a:Lgs;

    const-string v0, "clientType"

    .line 2
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Lgs;->b:Lf40;

    const-string v0, "androidClientInfo"

    .line 3
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Lgs;->c:Lf40;

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
    check-cast p1, Lss;

    check-cast p2, Lh40;

    .line 2
    sget-object v0, Lgs;->b:Lf40;

    invoke-virtual {p1}, Lss;->c()Lss$b;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lh40;->f(Lf40;Ljava/lang/Object;)Lh40;

    .line 3
    sget-object v0, Lgs;->c:Lf40;

    invoke-virtual {p1}, Lss;->b()Lds;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lh40;->f(Lf40;Ljava/lang/Object;)Lh40;

    return-void
.end method
