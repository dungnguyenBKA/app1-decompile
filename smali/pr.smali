.class public Lpr;
.super Lor;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lor;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    const/high16 v0, 0x42c80000    # 100.0f

    .line 1
    invoke-virtual {p0, v0}, Lor;->a(F)I

    move-result v0

    return v0
.end method

.method public e()I
    .locals 1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 1
    invoke-virtual {p0, v0}, Lor;->a(F)I

    move-result v0

    return v0
.end method

.method public f()I
    .locals 1

    const/high16 v0, 0x41800000    # 16.0f

    .line 1
    invoke-virtual {p0, v0}, Lor;->a(F)I

    move-result v0

    return v0
.end method

.method public g()F
    .locals 1

    const/high16 v0, 0x41600000    # 14.0f

    .line 1
    invoke-virtual {p0, v0}, Lor;->c(F)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method
