.class public Li5;
.super Lg5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg5<",
        "Lb5;",
        ">;"
    }
.end annotation


# static fields
.field private static final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "NetworkMeteredCtrlr"

    .line 1
    invoke-static {v0}, Landroidx/work/h;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Li5;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lm6;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ls5;->c(Landroid/content/Context;Lm6;)Ls5;

    move-result-object p1

    invoke-virtual {p1}, Ls5;->d()Lq5;

    move-result-object p1

    invoke-direct {p0, p1}, Lg5;-><init>(Lp5;)V

    return-void
.end method


# virtual methods
.method b(Lc6;)Z
    .locals 1

    .line 1
    iget-object p1, p1, Lc6;->j:Landroidx/work/c;

    invoke-virtual {p1}, Landroidx/work/c;->b()Landroidx/work/i;

    move-result-object p1

    sget-object v0, Landroidx/work/i;->f:Landroidx/work/i;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method c(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    check-cast p1, Lb5;

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x1a

    const/4 v3, 0x0

    if-ge v0, v2, :cond_0

    .line 3
    invoke-static {}, Landroidx/work/h;->c()Landroidx/work/h;

    move-result-object v0

    sget-object v2, Li5;->e:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Throwable;

    const-string v4, "Metered network constraint is not supported before API 26, only checking for connected state."

    invoke-virtual {v0, v2, v4, v3}, Landroidx/work/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 4
    invoke-virtual {p1}, Lb5;->a()Z

    move-result p1

    xor-int/2addr p1, v1

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {p1}, Lb5;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lb5;->b()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    move p1, v1

    :goto_1
    return p1
.end method
