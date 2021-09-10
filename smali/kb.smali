.class public Lkb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrb<",
        "Lhc;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lkb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lkb;

    invoke-direct {v0}, Lkb;-><init>()V

    sput-object v0, Lkb;->a:Lkb;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lub;F)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lub;->o0()Lub$b;

    move-result-object v0

    sget-object v1, Lub$b;->b:Lub$b;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lub;->o()V

    .line 3
    :cond_1
    invoke-virtual {p1}, Lub;->j0()D

    move-result-wide v1

    double-to-float v1, v1

    .line 4
    invoke-virtual {p1}, Lub;->j0()D

    move-result-wide v2

    double-to-float v2, v2

    .line 5
    :goto_1
    invoke-virtual {p1}, Lub;->b0()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6
    invoke-virtual {p1}, Lub;->s0()V

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {p1}, Lub;->S()V

    .line 8
    :cond_3
    new-instance p1, Lhc;

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr v1, v0

    mul-float v1, v1, p2

    div-float/2addr v2, v0

    mul-float v2, v2, p2

    invoke-direct {p1, v1, v2}, Lhc;-><init>(FF)V

    return-object p1
.end method
