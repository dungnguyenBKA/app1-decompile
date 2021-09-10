.class final Ln10$t;
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
    name = "t"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lg40<",
        "Li20$d$f;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Ln10$t;

.field private static final b:Lf40;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ln10$t;

    invoke-direct {v0}, Ln10$t;-><init>()V

    sput-object v0, Ln10$t;->a:Ln10$t;

    const-string v0, "identifier"

    .line 2
    invoke-static {v0}, Lf40;->b(Ljava/lang/String;)Lf40;

    move-result-object v0

    sput-object v0, Ln10$t;->b:Lf40;

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
    .locals 1

    .line 1
    check-cast p1, Li20$d$f;

    check-cast p2, Lh40;

    .line 2
    sget-object v0, Ln10$t;->b:Lf40;

    invoke-virtual {p1}, Li20$d$f;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lh40;->f(Lf40;Ljava/lang/Object;)Lh40;

    return-void
.end method
