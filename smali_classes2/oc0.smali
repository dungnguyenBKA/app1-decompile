.class public Loc0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Loc0;->a:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1

    .line 1
    sget-object v0, Loc0;->a:Ljava/util/Random;

    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    return p1
.end method

.method public b(FF)F
    .locals 1

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    sub-float/2addr p1, v0

    invoke-virtual {p0, p1}, Loc0;->c(F)F

    move-result p1

    add-float/2addr p1, v0

    return p1
.end method

.method public c(F)F
    .locals 1

    .line 1
    sget-object v0, Loc0;->a:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    mul-float v0, v0, p1

    return v0
.end method
